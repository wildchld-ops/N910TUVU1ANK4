.class Lcom/android/launcher2/FolderAnimator;
.super Ljava/lang/Object;
.source "FolderAnimator.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FolderAnimator"


# instance fields
.field private mAnimatingOpen:Z

.field private final mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

.field private mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

.field private final mCloseAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private final mContent:Lcom/android/launcher2/CellLayoutNoGap;

.field private final mFolder:Lcom/android/launcher2/Folder;

.field private final mFolderHoverAnim:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderHoveringEndTime:J

.field private mFolderOpenOri:I

.field private mIcon:Lcom/android/launcher2/FolderIconView;

.field private mNumCloseAnimsRunning:I

.field mOnAnimationCancel:Ljava/lang/Runnable;

.field private final mOpenAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPostDrawPlate:Ljava/lang/Runnable;

.field private mRenderIconOnPlate:Z

.field private mTempIconPos:[I

.field private mTmpCanvas:Landroid/graphics/Canvas;

.field private mTmpPaint:Landroid/graphics/Paint;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderIconView;)V
    .locals 3
    .param p1    # Lcom/android/launcher2/Folder;
    .param p2    # Lcom/android/launcher2/FolderIconView;

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoveringEndTime:J

    iput v2, p0, Lcom/android/launcher2/FolderAnimator;->mFolderOpenOri:I

    new-instance v0, Lcom/android/launcher2/FolderAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderAnimator$1;-><init>(Lcom/android/launcher2/FolderAnimator;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    iput v2, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    new-instance v0, Lcom/android/launcher2/FolderAnimator$9;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderAnimator$9;-><init>(Lcom/android/launcher2/FolderAnimator;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mPostDrawPlate:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    :goto_0
    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderAnimator;

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderAnimator;

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/FolderAnimator;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/FolderAnimator;

    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->drawPlate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderAnimator;)[I
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderAnimator;

    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/FolderAnimator;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderAnimator;

    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getNewImageView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$420(Lcom/android/launcher2/FolderAnimator;I)I
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderAnimator;
    .param p1    # I

    iget v0, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderAnimator;

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/FolderAnimator;IZ)I
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderAnimator;
    .param p1    # I
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/FolderAnimator;->animHoverGroup(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderAnimator;

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/Folder;
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderAnimator;

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/FolderAnimator;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/launcher2/FolderAnimator;

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mPostDrawPlate:Ljava/lang/Runnable;

    return-object v0
.end method

.method private animHoverGroup(IZ)I
    .locals 3
    .param p1    # I
    .param p2    # Z

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    if-le p1, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    if-ne p1, v2, :cond_5

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    if-le p1, v2, :cond_6

    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private animationNeeded(Landroid/view/View;I)Z
    .locals 13
    .param p1    # Landroid/view/View;
    .param p2    # I

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    iget-object v11, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v11, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ne v4, v0, :cond_2

    if-ne v5, v1, :cond_2

    move v3, v9

    :goto_0
    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    move v2, v6

    :goto_1
    const/4 v11, 0x6

    if-ge p2, v11, :cond_4

    :goto_2
    cmpl-float v11, v2, v10

    if-gtz v11, :cond_0

    cmpl-float v10, v6, v10

    if-lez v10, :cond_1

    :cond_0
    move v8, v9

    :cond_1
    return v8

    :cond_2
    move v3, v8

    goto :goto_0

    :cond_3
    move v2, v10

    goto :goto_1

    :cond_4
    move v6, v10

    goto :goto_2
.end method

.method private buildAnimForItem(Lcom/android/launcher2/BaseItem;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 9
    .param p1    # Lcom/android/launcher2/BaseItem;

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragReceivable;

    invoke-interface {v0}, Lcom/android/launcher2/DragReceivable;->getContainerType()J

    move-result-wide v2

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move v1, v8

    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v6

    iput-object p1, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iput-object v7, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    return-object v6

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private buildAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 6
    .param p1    # [I
    .param p2    # Lcom/android/launcher2/AnimationLayer$Anim;
    .param p3    # I
    .param p4    # [I

    move-object v3, p1

    new-instance v0, Lcom/android/launcher2/FolderAnimator$4;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderAnimator$4;-><init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;[I[II)V

    return-object v0
.end method

.method private buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 15
    .param p1    # [I
    .param p2    # Lcom/android/launcher2/AnimationLayer$Anim;
    .param p3    # I
    .param p4    # [I
    .param p5    # Z
    .param p6    # Z

    if-eqz p1, :cond_2

    const/4 v7, 0x1

    :goto_0
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v13

    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 p1, v0

    const/4 v1, 0x0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    aget v3, v13, v3

    sub-int/2addr v2, v3

    aput v2, p1, v1

    const/4 v1, 0x1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v13, v3

    sub-int/2addr v2, v3

    aput v2, p1, v1

    :cond_0
    move-object/from16 v6, p1

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v9

    const/4 v12, 0x6

    if-eqz p6, :cond_1

    const/4 v12, 0x7

    :cond_1
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v14

    :goto_1
    if-eqz v14, :cond_4

    const/high16 v10, 0x3f800000

    :goto_2
    move/from16 v0, p3

    if-ge v0, v12, :cond_5

    const/high16 v11, 0x3f800000

    :goto_3
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/FolderIconHelper;->getIconScaleFactor(Lcom/android/launcher2/FolderItem;)F

    move-result v8

    new-instance v1, Lcom/android/launcher2/FolderAnimator$3;

    move-object v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move/from16 v5, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher2/FolderAnimator$3;-><init>(Lcom/android/launcher2/FolderAnimator;[ILcom/android/launcher2/AnimationLayer$Anim;Z[IZFFFF)V

    return-object v1

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    const/4 v14, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private drawPlate()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderAnimator;->destroyPlate()V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v3}, Lcom/android/launcher2/FolderAnimator;->drawPlate_(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v4, v2, v6

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v4, v2, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v1

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeContainer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v0

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    const/high16 v3, 0x3f800000

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mPostDrawPlate:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private drawPlate_(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;

    const/high16 v6, 0x40000000

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/FolderIconView;->drawPlateWithFolderScale(Landroid/graphics/Canvas;)V

    iget-boolean v3, p0, Lcom/android/launcher2/FolderAnimator;->mRenderIconOnPlate:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v0

    const/high16 v3, 0x3f800000

    const v4, 0x3dcccccd

    mul-float/2addr v4, v0

    add-float v2, v3, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method private getAppIconOffset(I)[I
    .locals 12
    .param p1    # I

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/16 v4, 0x8

    const/16 v5, 0xa

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_0

    const v8, 0x7f0e0020

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v8, 0x7f0e0021

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_0
    invoke-static {p1}, Lcom/android/launcher2/FolderIconHelper;->getAppIconXYCord(I)[F

    move-result-object v0

    const/high16 v2, 0x3f800000

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v8}, Lcom/android/launcher2/AppIconView;->getHotseatScaleFactor()F

    move-result v2

    :cond_1
    aget v8, v0, v10

    mul-float v9, v2, v7

    mul-float/2addr v8, v9

    aput v8, v0, v10

    aget v8, v0, v10

    int-to-float v9, v4

    mul-float/2addr v9, v2

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    aput v8, v0, v10

    aget v8, v0, v11

    mul-float v9, v2, v7

    mul-float/2addr v8, v9

    aput v8, v0, v11

    aget v8, v0, v11

    int-to-float v9, v5

    mul-float/2addr v9, v2

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    aput v8, v0, v11

    const/4 v8, 0x2

    new-array v3, v8, [I

    aget v8, v0, v10

    float-to-int v8, v8

    aput v8, v3, v10

    aget v8, v0, v11

    float-to-int v8, v8

    aput v8, v3, v11

    return-object v3

    :catch_0
    move-exception v1

    const/high16 v7, 0x3f800000

    goto :goto_0
.end method

.method private getIconRelativeToAnimationLayer(Lcom/android/launcher2/AppIconView;Z)[I
    .locals 8
    .param p1    # Lcom/android/launcher2/AppIconView;
    .param p2    # Z

    const/4 v7, 0x1

    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v5, v7}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v0

    iget v3, v0, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v4, v0, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v1, v5, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    move-object v2, p1

    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eq v2, v5, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    aput v4, v5, v7

    goto :goto_0
.end method

.method private final getLocationOfFolderIcon()[I
    .locals 15

    const/4 v14, 0x0

    const/high16 v13, 0x40000000

    const/4 v12, 0x1

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v10, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    const/4 v10, 0x2

    new-array v6, v10, [I

    invoke-virtual {v9, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v10, v6, v12

    sget-object v11, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    aget v11, v11, v12

    sub-int/2addr v10, v11

    aput v10, v6, v12

    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float v3, v10, v13

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    int-to-float v4, v10

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScaleX()F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :goto_0
    aget v10, v6, v14

    int-to-float v10, v10

    mul-float v11, v3, v8

    add-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v6, v14

    aget v10, v6, v12

    int-to-float v10, v10

    mul-float v11, v4, v8

    add-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v6, v12

    const/high16 v10, 0x3f800000

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v2, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v1, v10

    aget v10, v6, v14

    int-to-float v10, v10

    mul-float v11, v2, v8

    sub-float v11, v2, v11

    div-float/2addr v11, v13

    sub-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v6, v14

    aget v10, v6, v12

    int-to-float v10, v10

    mul-float v11, v1, v8

    sub-float v11, v1, v11

    div-float/2addr v11, v13

    sub-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v6, v12

    :cond_0
    return-object v6

    :catch_0
    move-exception v5

    const/high16 v8, 0x3f800000

    goto :goto_0
.end method

.method private getNewImageView()Landroid/widget/ImageView;
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-object v0
.end method

.method private startHoveringLocation(I)Lcom/android/launcher2/FolderIconHelper$LocFolder;
    .locals 7
    .param p1    # I

    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->NOMAL:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    const v5, 0x7f0a0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    sget-object v5, Lcom/android/launcher2/FolderIconHelper$LocFolder;->NOMAL:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    :goto_0
    return-object v5

    :cond_0
    if-eqz v0, :cond_1

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_2

    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->LEFT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    :cond_1
    :goto_1
    move-object v5, v2

    goto :goto_0

    :cond_2
    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    const v6, 0x7f0e002a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_3

    iget-object v5, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_3

    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->RIGHT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    goto :goto_1

    :cond_3
    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x4

    if-le p1, v5, :cond_1

    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->TOP_FOLDER_INHOME:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    goto :goto_1
.end method


# virtual methods
.method FadeInHoverIcon(I)V
    .locals 23
    .param p1    # I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v14

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/FolderAnimator;->setFolderHoveringEndTime(J)V

    const/16 v2, 0x8

    if-ge v14, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    div-int v2, v14, v15

    move/from16 v0, p1

    if-ne v2, v0, :cond_2

    mul-int v2, v15, p1

    rem-int v21, v14, v2

    :cond_2
    if-nez v21, :cond_3

    add-int/lit8 v16, v15, -0x1

    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->clearFolderHoverAnims()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v19

    move/from16 v17, v16

    :goto_1
    if-ltz v17, :cond_0

    mul-int v2, p1, v15

    add-int v2, v2, v17

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iget-object v6, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_4

    :goto_2
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v16, v21, -0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getAnimGroup()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v5, 0x0

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v9

    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    mul-int v2, p1, v15

    add-int v2, v2, v17

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iput-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v22

    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getAppIconScaleFactor()F

    move-result v2

    mul-float v22, v22, v2

    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(I)[I

    move-result-object v10

    const/4 v2, 0x0

    aget v3, v10, v2

    const/4 v4, 0x0

    aget v4, v19, v4

    add-int/2addr v3, v4

    aput v3, v10, v2

    const/4 v2, 0x1

    aget v3, v10, v2

    const/4 v4, 0x1

    aget v4, v19, v4

    add-int/2addr v3, v4

    aput v3, v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    add-int/lit8 v3, v16, 0x1

    add-int/lit8 v4, v16, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/FolderAnimator;->startHoveringLocation(I)Lcom/android/launcher2/FolderIconHelper$LocFolder;

    move-result-object v4

    move/from16 v0, v17

    invoke-static {v2, v0, v3, v4}, Lcom/android/launcher2/FolderIconHelper;->getHoverOffset(Landroid/content/res/Resources;IILcom/android/launcher2/FolderIconHelper$LocFolder;)[I

    move-result-object v11

    move/from16 v12, v17

    move/from16 v13, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v9, v1, v11}, Lcom/android/launcher2/FolderAnimator;->buildAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher2/AnimationLayer$Anim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    new-instance v7, Lcom/android/launcher2/FolderAnimator$7;

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/FolderAnimator$7;-><init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;[I[III)V

    invoke-virtual {v2, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/FolderAnimator;->animHoverGroup(IZ)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto/16 :goto_2
.end method

.method animateCloseAnimsEnd(Lcom/android/launcher2/DragState;ZZ)V
    .locals 17
    .param p1    # Lcom/android/launcher2/DragState;
    .param p2    # Z
    .param p3    # Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->hasDeleted()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims(Z)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->cancelBouncingItem()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v13

    const/4 v12, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->foundValidDrop()Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_a

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-ne v1, v2, :cond_a

    :cond_4
    const/4 v12, 0x1

    :goto_1
    if-nez p2, :cond_5

    if-eqz v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v12, 0x0

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getAnimGroup()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v4, 0x0

    if-eqz v12, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :goto_2
    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v3

    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iput-object v1, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    :cond_6
    if-eqz v12, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AnimationLayer;->getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(I)[I

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_8
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->cancelAnimation()V

    iget-object v15, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v15}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v8

    iget-object v1, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    if-eqz p3, :cond_d

    const/4 v1, 0x7

    if-le v13, v1, :cond_9

    const/4 v13, 0x7

    :cond_9
    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(I)[I

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_3

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(I)[I

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_3

    :cond_e
    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/FolderAnimator$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/launcher2/FolderAnimator$8;-><init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    sget v2, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto/16 :goto_0
.end method

.method animateHoverExpand()V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->removeOpenAnimations()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims(Z)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v15

    add-int/lit8 v9, v13, -0x1

    :goto_0
    if-ltz v9, :cond_2

    invoke-interface {v14, v9}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iget-object v5, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getAnimGroup()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v8

    invoke-interface {v14, v9}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iput-object v1, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v17

    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getAppIconScaleFactor()F

    move-result v1

    mul-float v17, v17, v1

    iget-object v1, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(I)[I

    move-result-object v7

    const/4 v1, 0x0

    aget v2, v7, v1

    const/4 v3, 0x0

    aget v3, v15, v3

    add-int/2addr v2, v3

    aput v2, v7, v1

    const/4 v1, 0x1

    aget v2, v7, v1

    const/4 v3, 0x1

    aget v3, v15, v3

    add-int/2addr v2, v3

    aput v2, v7, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher2/FolderAnimator;->startHoveringLocation(I)Lcom/android/launcher2/FolderIconHelper$LocFolder;

    move-result-object v2

    invoke-static {v1, v9, v13, v2}, Lcom/android/launcher2/FolderIconHelper;->getHoverOffset(Landroid/content/res/Resources;IILcom/android/launcher2/FolderIconHelper$LocFolder;)[I

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lcom/android/launcher2/AnimationLayer$Anim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/FolderAnimator$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher2/FolderAnimator$6;-><init>(Lcom/android/launcher2/FolderAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method animatePlate(Z)Z
    .locals 11
    .param p1    # Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v9

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v7

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-nez v9, :cond_2

    if-nez v7, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v0, v1, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v0, v1, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v0, v1, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v1, :cond_7

    if-nez p1, :cond_7

    :cond_5
    iput-boolean v0, p0, Lcom/android/launcher2/FolderAnimator;->mRenderIconOnPlate:Z

    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/FolderItem;

    invoke-interface {v8}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderHighlightBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    :cond_6
    iget-object v10, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getAnimGroup()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->drawPlate()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/FolderAnimator;->mRenderIconOnPlate:Z

    goto :goto_1
.end method

.method bounceItemInIconAt(Lcom/android/launcher2/BaseItem;I)V
    .locals 13
    .param p1    # Lcom/android/launcher2/BaseItem;
    .param p2    # I

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderAnimator;->buildAnimForItem(Lcom/android/launcher2/BaseItem;)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    new-instance v10, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v10}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v10, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v10, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v3

    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(I)[I

    move-result-object v4

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v9}, Lcom/android/launcher2/AppIconView;->getHotseatScaleFactor()F

    move-result v2

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0c00ba

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/high16 v9, 0x3f800000

    cmpg-float v9, v2, v9

    if-gez v9, :cond_1

    const v9, 0x7f0c00b9

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :cond_1
    const/4 v9, 0x2

    new-array v1, v9, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v3, v10

    const/4 v11, 0x0

    aget v11, v4, v11

    add-int/2addr v10, v11

    aput v10, v1, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v3, v10

    const/4 v11, 0x1

    aget v11, v4, v11

    sub-int/2addr v11, v5

    add-int/2addr v10, v11

    aput v10, v1, v9

    const/4 v9, 0x2

    new-array v8, v9, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v3, v10

    const/4 v11, 0x0

    aget v11, v4, v11

    add-int/2addr v10, v11

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v3, v10

    const/4 v11, 0x1

    aget v11, v4, v11

    sub-int/2addr v11, v5

    iget-object v12, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x4

    sub-int/2addr v11, v12

    add-int/2addr v10, v11

    aput v10, v8, v9

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v7

    const/high16 v9, 0x3f400000

    mul-float/2addr v7, v9

    iget-object v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/view/View;->setScaleX(F)V

    iget-object v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/view/View;->setScaleY(F)V

    const/4 v9, 0x0

    iput v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    iget v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    iget-object v10, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    invoke-static {v9, v10}, Lcom/android/launcher2/FolderIconView;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/launcher2/FolderIconView;->setBounceItem(Z)V

    const/high16 v9, 0x3f000000

    iget-object v10, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/FolderAnimator;->setCloseAnimsAlpha(FLcom/android/launcher2/AnimationLayer$Anim;)V

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    new-instance v9, Lcom/android/launcher2/FolderAnimator$2;

    invoke-direct {v9, p0, v0, v1, v8}, Lcom/android/launcher2/FolderAnimator$2;-><init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;[I[I)V

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lcom/android/launcher2/AnimationLayer$Anim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    const-wide/16 v10, 0x4b0

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method cancel()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderAnimator;->destroyPlate()V

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method cancelBouncingItem()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIconView;->setBounceItem(Z)V

    const/high16 v1, 0x3f800000

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/FolderAnimator;->setCloseAnimsAlpha(FLcom/android/launcher2/AnimationLayer$Anim;)V

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/AnimationLayer$Anim;->addAlphaAnimator(FFZ)V

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method cleanupCloseAnims(Z)V
    .locals 4
    .param p1    # Z

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method clearFolderHoverAnims()V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method destroyPlate()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->resetShadow()V

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v2, v0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v2, v0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v2, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    :cond_1
    return-void
.end method

.method finishBouncingItem(Lcom/android/launcher2/BaseItem;)V
    .locals 3
    .param p1    # Lcom/android/launcher2/BaseItem;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->setBounceItem(Z)V

    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/FolderAnimator;->setCloseAnimsAlpha(FLcom/android/launcher2/AnimationLayer$Anim;)V

    goto :goto_0
.end method

.method public getFolderHoveringEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoveringEndTime:J

    return-wide v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCloseAnimating()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-boolean v1, v1, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isHoverAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method open()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public removeOpenAnimations()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/android/launcher2/FolderAnimator$5;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher2/FolderAnimator$5;-><init>(Lcom/android/launcher2/FolderAnimator;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    return-void
.end method

.method setCloseAnimsAlpha(FLcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 4
    .param p1    # F
    .param p2    # Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz p2, :cond_1

    if-eq v0, p2, :cond_0

    :cond_1
    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFolderHoveringEndTime(J)V
    .locals 0
    .param p1    # J

    iput-wide p1, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoveringEndTime:J

    return-void
.end method

.method public updateTempIconPosition()V
    .locals 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    check-cast v2, Lcom/android/launcher2/AppIconView;

    invoke-direct {p0, v2, v4}, Lcom/android/launcher2/FolderAnimator;->getIconRelativeToAnimationLayer(Lcom/android/launcher2/AppIconView;Z)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget-wide v3, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/FolderAnimator;->mFolderOpenOri:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I

    :cond_0
    return-void
.end method

.method updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/FolderIconView;

    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    return-void
.end method
