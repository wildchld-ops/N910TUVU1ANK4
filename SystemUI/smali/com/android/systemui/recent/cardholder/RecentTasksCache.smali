.class public Lcom/android/systemui/recent/cardholder/RecentTasksCache;
.super Ljava/lang/Object;
.source "RecentTasksCache.java"


# static fields
.field private static final MAX_TASKS:I = 0x15

.field private static final MAX_VIEW_CACHE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "RecentTasksCache"


# instance fields
.field private final mCacheMapLand:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recent/cardholder/ViewCacheData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCacheMapPort:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recent/cardholder/ViewCacheData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private final mStackIndexLand:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStackIndexPort:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mOrientation:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mCacheMapPort:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mCacheMapLand:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mStackIndexPort:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mStackIndexLand:Landroid/util/SparseArray;

    return-void
.end method

.method private getKeyValue(I)I
    .locals 2

    move v0, p1

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    const/4 v0, 0x6

    :cond_0
    return v0
.end method

.method private hasStackIndexCache(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mOrientation:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mStackIndexPort:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mStackIndexLand:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public dump(I)V
    .locals 5

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mCacheMapPort:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    const-string v2, "RecentTasksCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  : dump ------------------------------------------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/cardholder/ViewCacheData;

    invoke-virtual {v2}, Lcom/android/systemui/recent/cardholder/ViewCacheData;->dump()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mCacheMapLand:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hasCache(I)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->getKeyValue(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mCacheMapPort:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mCacheMapLand:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public loadBottomStackIndex(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mStackIndexPort:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mStackIndexLand:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public loadCache(I)Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recent/cardholder/ViewCacheData;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->getKeyValue(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mCacheMapPort:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mCacheMapLand:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    goto :goto_0
.end method

.method public loadTopStackIndex(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mStackIndexPort:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mStackIndexLand:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public saveCache(Ljava/util/ArrayList;III)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;III)Z"
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mOrientation:I

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->hasStackIndexCache(I)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mOrientation:I

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mStackIndexPort:Landroid/util/SparseArray;

    new-instance v18, Landroid/util/Pair;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v14, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x6

    if-lt v14, v2, :cond_3

    rsub-int/lit8 v9, v14, 0x6

    const/4 v11, 0x6

    :goto_1
    const/16 v2, 0x15

    if-ge v11, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mStackIndexPort:Landroid/util/SparseArray;

    new-instance v18, Landroid/util/Pair;

    add-int v19, p3, v9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    add-int v20, p4, v9

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mStackIndexLand:Landroid/util/SparseArray;

    new-instance v18, Landroid/util/Pair;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v14, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x6

    if-lt v14, v2, :cond_3

    rsub-int/lit8 v9, v14, 0x6

    const/4 v11, 0x6

    :goto_2
    const/16 v2, 0x15

    if-ge v11, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mStackIndexLand:Landroid/util/SparseArray;

    new-instance v18, Landroid/util/Pair;

    add-int v19, p3, v9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    add-int v20, p4, v9

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->getKeyValue(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->hasCache(I)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    add-int/lit8 v17, v12, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    :goto_3
    const/4 v2, -0x1

    if-le v11, v2, :cond_4

    if-gez v17, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mOrientation:I

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mCacheMapPort:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    const v2, 0x7f080021

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const v2, 0x7f08001d

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v15}, Landroid/view/View;->getScaleY()F

    move-result v6

    invoke-virtual {v15}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v15}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v7

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v8

    new-instance v2, Lcom/android/systemui/recent/cardholder/ViewCacheData;

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/recent/cardholder/ViewCacheData;-><init>(IFFFFI)V

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v17, v17, -0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mCacheMapLand:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksCache;->mOrientation:I

    return-void
.end method
