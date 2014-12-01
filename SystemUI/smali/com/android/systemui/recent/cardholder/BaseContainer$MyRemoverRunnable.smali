.class Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/cardholder/BaseContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRemoverRunnable"
.end annotation


# instance fields
.field animate:Z

.field index:I

.field next:Landroid/view/View;

.field scrollStep:F

.field scrollTo:F

.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

.field useCache:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/BaseContainer;IFI)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;IFIZ)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/recent/cardholder/BaseContainer;IFIZ)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;-><init>(Lcom/android/systemui/recent/cardholder/BaseContainer;IFIZZ)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/recent/cardholder/BaseContainer;IFIZZ)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollStep:F

    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->animate:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->useCache:Z

    iput-boolean p6, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->useCache:Z

    int-to-float v0, p4

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollStep:F

    iget v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollStep:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    sget v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mAnimationScrollStepForSizeOne:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollStep:F

    :goto_0
    iput-boolean p5, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->animate:Z

    :cond_0
    iput p2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->index:I

    iput p3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollTo:F

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->next:Landroid/view/View;

    :goto_1
    return-void

    :cond_1
    sget v0, Lcom/android/systemui/recent/cardholder/BaseContainer;->mAnimationScrollStep:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollStep:F

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getNextChild(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->next:Landroid/view/View;

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 15

    const-wide/16 v13, 0x1

    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v10, v10, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v10, v10, Lcom/android/systemui/recent/cardholder/BaseContainer;->mRecentTasksLoader:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    invoke-virtual {v10}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getRecentTasksCache()Lcom/android/systemui/recent/cardholder/RecentTasksCache;

    move-result-object v2

    if-nez v9, :cond_1

    const-string v10, "BaseContainer"

    const-string v11, "can\'t start MyRemoveRunnable"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v10, v10, Lcom/android/systemui/recent/cardholder/BaseContainer;->mOrientation:I

    invoke-virtual {v2, v10}, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->setOrientation(I)V

    iget-boolean v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->useCache:Z

    if-eqz v10, :cond_6

    invoke-virtual {v2, v9}, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->hasCache(I)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v2, v9}, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->loadCache(I)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    add-int/lit8 v1, v9, -0x1

    :goto_1
    const/4 v10, -0x1

    if-le v1, v10, :cond_5

    if-gez v6, :cond_2

    const/4 v6, 0x0

    :cond_2
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recent/cardholder/ViewCacheData;

    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v10, v10, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v8}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getVisibility()I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    const/4 v10, 0x6

    if-lt v7, v10, :cond_3

    add-int/lit8 v10, v7, -0x6

    if-le v1, v10, :cond_4

    :cond_3
    invoke-virtual {v8}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getScale()F

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v8}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getScale()F

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v8}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getX()F

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setX(F)V

    invoke-virtual {v8}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getY()F

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setY(F)V

    :cond_4
    const v10, 0x7f080021

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v8}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getDimLayerAlpha()F

    move-result v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    const v10, 0x7f08001d

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v8}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->getShadowVisibility()I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-virtual {v2, v9}, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->loadTopStackIndex(I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-virtual {v2, v9}, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->loadBottomStackIndex(I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    goto/16 :goto_0

    :cond_6
    iget v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollStep:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v11, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->next:Landroid/view/View;

    invoke-virtual {v10, v11}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v10

    iget v11, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollStep:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollTo:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v11, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollStep:F

    iget v12, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->index:I

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/recent/cardholder/BaseContainer;->doScroll(FI)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->animate:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-virtual {v10, p0, v13, v14}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v11, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollTo:F

    iget-object v12, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v13, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->next:Landroid/view/View;

    invoke-virtual {v12, v13}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v12

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->index:I

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/recent/cardholder/BaseContainer;->doScroll(FI)Z

    goto/16 :goto_0

    :cond_8
    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v11, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->next:Landroid/view/View;

    invoke-virtual {v10, v11}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v10

    iget v11, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollStep:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollTo:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_b

    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v11, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollStep:F

    iget v12, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->index:I

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/recent/cardholder/BaseContainer;->doScroll(FI)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-boolean v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->animate:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-virtual {v10, p0, v13, v14}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_9
    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    # getter for: Lcom/android/systemui/recent/cardholder/BaseContainer;->mSkipCacheSave:Z
    invoke-static {v10}, Lcom/android/systemui/recent/cardholder/BaseContainer;->access$400(Lcom/android/systemui/recent/cardholder/BaseContainer;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v10, v10, Lcom/android/systemui/recent/cardholder/BaseContainer;->mRecentTasksLoader:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    invoke-virtual {v10}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getRecentTasksCache()Lcom/android/systemui/recent/cardholder/RecentTasksCache;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v11, v11, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v12, v12, Lcom/android/systemui/recent/cardholder/BaseContainer;->mOrientation:I

    iget-object v13, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v13, v13, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    iget-object v14, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v14, v14, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->saveCache(Ljava/util/ArrayList;III)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "BaseContainer"

    const-string v11, "saveCache complete"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    const/4 v11, 0x0

    # setter for: Lcom/android/systemui/recent/cardholder/BaseContainer;->mSkipCacheSave:Z
    invoke-static {v10, v11}, Lcom/android/systemui/recent/cardholder/BaseContainer;->access$402(Lcom/android/systemui/recent/cardholder/BaseContainer;Z)Z

    goto/16 :goto_0

    :cond_b
    iget-object v10, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v11, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v12, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->next:Landroid/view/View;

    invoke-virtual {v11, v12}, Lcom/android/systemui/recent/cardholder/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v11

    iget v12, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollStep:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->scrollTo:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRemoverRunnable;->index:I

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/recent/cardholder/BaseContainer;->doScroll(FI)Z

    goto/16 :goto_0
.end method
