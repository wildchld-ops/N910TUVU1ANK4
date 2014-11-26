.class public Lcom/android/launcher2/CellPositionerWorkspace;
.super Ljava/lang/Object;
.source "CellPositionerWorkspace.java"

# interfaces
.implements Lcom/android/launcher2/CellPositioner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;,
        Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;
    }
.end annotation


# instance fields
.field private final directions:[[I

.field private mCellHeight:I

.field private mCellWidth:I

.field private final mDeltaProvider:Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;

.field private final mDeltas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private mDragDelta:Lcom/android/launcher2/PositionDelta;

.field private final mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

.field private final mLayout:Lcom/android/launcher2/CellLayout;

.field final mNumColumns:I

.field final mNumRows:I

.field private mOccupied:[[Z

.field private mShrinkingEnabled:Z

.field private final tmpExactXY:[I

.field private tmpForSort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpRect:[I

.field private tmpRollback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpShiftDeltas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpSortedDeltas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpXY:[I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;)V
    .locals 6
    .param p1    # Lcom/android/launcher2/CellLayout;
    .param p2    # Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;
    .param p3    # Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    iput-boolean v4, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mShrinkingEnabled:Z

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    iput-object p2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltaProvider:Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;

    iput-object p3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v0}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getNumRows()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v0}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getNumColumns()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v0}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getCellWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellWidth:I

    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v0}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getCellHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellHeight:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        -0x1
        0x1
    .end array-data
.end method

.method private calculateOccupiedCells(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;)V"
        }
    .end annotation

    iget v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    iget v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findDeltas(Lcom/android/launcher2/PositionDelta;Ljava/util/List;Ljava/util/List;Z)Z
    .locals 4
    .param p1    # Lcom/android/launcher2/PositionDelta;
    .param p4    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/PositionDelta;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-interface {p3}, Ljava/util/List;->clear()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    if-eqz p4, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PositionDelta;->overlaps(Lcom/android/launcher2/PositionDelta;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->shrinkable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    if-gt v3, v2, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    if-le v3, v2, :cond_3

    :cond_4
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->shrinkable()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    if-gt v3, v2, :cond_9

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    if-le v3, v2, :cond_8

    :cond_9
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    :goto_4
    return v2

    :cond_b
    const/4 v2, 0x0

    goto :goto_4
.end method

.method private findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z
    .locals 10
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Lcom/android/launcher2/WidgetSizes;
    .param p6    # Z
    .param p7    # [I

    if-eqz p6, :cond_0

    const/4 v7, 0x1

    if-ne p3, v7, :cond_0

    const/4 v7, 0x1

    if-ne p4, v7, :cond_0

    const/4 v7, 0x0

    aput p1, p7, v7

    const/4 v7, 0x1

    aput p2, p7, v7

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    move-object/from16 v1, p7

    const v0, 0x7f7fffff

    const/4 v6, 0x0

    :goto_1
    iget v7, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    add-int/lit8 v8, p4, -0x1

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_7

    const/4 v5, 0x0

    :goto_2
    iget v7, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    add-int/lit8 v8, p3, -0x1

    sub-int/2addr v7, v8

    if-ge v5, v7, :cond_6

    if-nez p6, :cond_5

    const/4 v3, 0x0

    :goto_3
    if-ge v3, p3, :cond_5

    const/4 v4, 0x0

    :goto_4
    if-ge v4, p4, :cond_4

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lcom/android/launcher2/WidgetSizes;->getAvailableSizeCount()I

    move-result v7

    if-lez v7, :cond_2

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p5, v7, v8}, Lcom/android/launcher2/WidgetSizes;->isAvailableSize(II)Z

    move-result v7

    if-nez v7, :cond_2

    add-int/2addr v5, v3

    :cond_1
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    add-int v8, v5, v3

    aget-object v7, v7, v8

    add-int v8, v6, v4

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_3

    add-int/2addr v5, v3

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    sub-int v7, v5, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellWidth:I

    mul-int/2addr v7, v8

    sub-int v8, v6, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellHeight:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    int-to-float v2, v7

    cmpg-float v7, v2, v0

    if-gtz v7, :cond_1

    move v0, v2

    const/4 v7, 0x0

    aput v5, v1, v7

    const/4 v7, 0x1

    aput v6, v1, v7

    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    const v7, 0x7f7fffff

    cmpl-float v7, v0, v7

    if-nez v7, :cond_8

    const/4 v7, 0x0

    goto :goto_0

    :cond_8
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private isDeltaValid(II)Z
    .locals 1
    .param p1    # I
    .param p2    # I

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V
    .locals 9
    .param p1    # Lcom/android/launcher2/PositionDelta;
    .param p2    # Z

    iget-object v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    iget-object v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    invoke-direct {p0, v5, v7}, Lcom/android/launcher2/CellPositionerWorkspace;->isDeltaValid(II)Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v5

    :goto_0
    add-int v8, v5, v2

    if-ge v4, v8, :cond_1

    if-ge v4, v0, :cond_1

    move v6, v7

    :goto_1
    add-int v8, v7, v3

    if-ge v6, v8, :cond_0

    if-ge v6, v1, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    aget-object v8, v8, v4

    aput-boolean p2, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private quickCheckEnoughSpace(I)Z
    .locals 4
    .param p1    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    if-ge v1, v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_0

    const/4 v3, 0x1

    :goto_2
    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private resetDeltas()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltaProvider:Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;

    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;->getDeltas(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PositionDelta;

    iget-object v1, v1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    iget-object v2, v2, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/launcher2/CellPositionerWorkspace;->calculateOccupiedCells(Ljava/util/List;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private shiftDeltas(Lcom/android/launcher2/PositionDelta;Z)Z
    .locals 22
    .param p1    # Lcom/android/launcher2/PositionDelta;
    .param p2    # Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/PositionDelta;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/launcher2/PositionDelta;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/PositionDelta;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/launcher2/CellPositionerWorkspace;->findDeltas(Lcom/android/launcher2/PositionDelta;Ljava/util/List;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->calculateOccupiedCells(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/PositionDelta;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/launcher2/CellPositionerWorkspace;->toRect([ILjava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v4, 0x0

    aget v4, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v5, 0x1

    aget v5, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v8, 0x2

    aget v6, v3, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v8, 0x3

    aget v7, v3, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int v17, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int v18, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/PositionDelta;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v3

    add-int v3, v3, v17

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    add-int v3, v3, v18

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/PositionDelta;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v7

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mShrinkingEnabled:Z

    if-eqz v3, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->shrinkable()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    return v3

    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v7

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getMinSpanX()I

    move-result v20

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getMinSpanY()I

    move-result v21

    :cond_5
    if-le v6, v7, :cond_9

    move/from16 v0, v20

    if-le v6, v0, :cond_9

    add-int/lit8 v6, v6, -0x1

    :goto_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_6
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    if-ge v6, v3, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v10

    add-int/lit8 v11, v6, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object/from16 v8, p0

    move v12, v7

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_6
    :goto_7
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    if-ge v7, v3, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v10

    add-int/lit8 v12, v7, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object/from16 v8, p0

    move v11, v6

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/launcher2/PositionDelta;->setSpanY(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PositionDelta;->setSpanX(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    goto/16 :goto_3

    :cond_9
    move/from16 v0, v21

    if-le v7, v0, :cond_a

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_5

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x1

    goto/16 :goto_4
.end method

.method private toRect([ILjava/util/ArrayList;)V
    .locals 8
    .param p1    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x64

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    aput v2, p1, v4

    aput v2, p1, v5

    aput v4, p1, v6

    aput v4, p1, v7

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    aget v3, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, p1, v4

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v2

    aget v3, p1, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, p1, v5

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    add-int/2addr v2, v3

    aget v3, p1, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p1, v6

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    add-int/2addr v2, v3

    aget v3, p1, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p1, v7

    goto :goto_0

    :cond_0
    aget v2, p1, v6

    aget v3, p1, v4

    sub-int/2addr v2, v3

    aput v2, p1, v6

    aget v2, p1, v7

    aget v3, p1, v5

    sub-int/2addr v2, v3

    aput v2, p1, v7

    return-void
.end method

.method private tryRearrange(Z)Z
    .locals 14
    .param p1    # Z

    const/4 v13, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v5

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v6

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    aget v3, v11, v10

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    aget v4, v11, v9

    const/4 v2, 0x0

    :goto_0
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    array-length v11, v11

    if-ge v2, v11, :cond_2

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    aget-object v11, v11, v2

    aget v11, v11, v10

    add-int v7, v3, v11

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    aget-object v11, v11, v2

    aget v11, v11, v9

    add-int v8, v4, v11

    if-ltz v7, :cond_1

    if-ltz v8, :cond_1

    add-int v11, v7, v5

    iget v12, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    if-gt v11, v12, :cond_1

    add-int v11, v8, v6

    iget v12, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    if-gt v11, v12, :cond_1

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v7}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v8}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-direct {p0, v11, v9}, Lcom/android/launcher2/CellPositionerWorkspace;->shiftDeltas(Lcom/android/launcher2/PositionDelta;Z)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    :goto_1
    return v9

    :cond_1
    if-nez p1, :cond_3

    :cond_2
    mul-int v11, v5, v6

    invoke-direct {p0, v11}, Lcom/android/launcher2/CellPositionerWorkspace;->quickCheckEnoughSpace(I)Z

    move-result v11

    if-nez v11, :cond_4

    move v9, v10

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    array-length v11, v11

    if-ge v2, v11, :cond_6

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    aget-object v11, v11, v2

    aget v11, v11, v10

    add-int v7, v3, v11

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    aget-object v11, v11, v2

    aget v11, v11, v9

    add-int v8, v4, v11

    if-ltz v7, :cond_5

    if-ltz v8, :cond_5

    add-int v11, v7, v5

    iget v12, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    if-gt v11, v12, :cond_5

    add-int v11, v8, v6

    iget v12, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    if-gt v11, v12, :cond_5

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v7}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v8}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-direct {p0, v11, v10}, Lcom/android/launcher2/CellPositionerWorkspace;->shiftDeltas(Lcom/android/launcher2/PositionDelta;Z)Z

    move-result v11

    if-nez v11, :cond_0

    :cond_5
    if-nez p1, :cond_8

    :cond_6
    if-eqz p1, :cond_b

    const/4 v7, 0x0

    :goto_3
    iget v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    sub-int/2addr v11, v5

    add-int/lit8 v11, v11, 0x1

    if-ge v7, v11, :cond_b

    const/4 v8, 0x0

    :goto_4
    iget v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    sub-int/2addr v11, v6

    add-int/lit8 v11, v11, 0x1

    if-ge v8, v11, :cond_a

    sub-int v11, v3, v7

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v11, v4, v8

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v13, :cond_9

    if-ge v1, v13, :cond_9

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v7}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v8}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-direct {p0, v11, v10}, Lcom/android/launcher2/CellPositionerWorkspace;->shiftDeltas(Lcom/android/launcher2/PositionDelta;Z)Z

    move-result v11

    if-eqz v11, :cond_7

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_b
    move v9, v10

    goto/16 :goto_1
.end method


# virtual methods
.method public addDelta(Lcom/android/launcher2/PositionDelta;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/PositionDelta;

    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->calculateOccupiedCells(Ljava/util/List;)V

    return-void
.end method

.method public deltaAt(IIII)Lcom/android/launcher2/PositionDelta;
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v5

    if-ne p1, v4, :cond_1

    if-ne p2, v5, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    add-int v6, p1, p3

    add-int/lit8 v6, v6, -0x1

    if-lt v6, v4, :cond_0

    add-int v6, v4, v2

    if-ge p1, v6, :cond_0

    add-int v6, p2, p4

    add-int/lit8 v6, v6, -0x1

    if-lt v6, v5, :cond_0

    add-int v6, v5, v3

    if-ge p2, v6, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findNearestVacantArea(IIII[I)[I
    .locals 10
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # [I

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    invoke-virtual {p0, v9}, Lcom/android/launcher2/CellPositionerWorkspace;->reset(Z)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v0

    if-nez v0, :cond_0

    aput v8, p5, v6

    aput v8, p5, v9

    :cond_0
    return-object p5
.end method

.method public getDeltas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDragDelta()Lcom/android/launcher2/PositionDelta;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher2/PositionDelta;

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-direct {v0, v1}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/PositionDelta;)V

    goto :goto_0
.end method

.method public removeDelta(Lcom/android/launcher2/PositionDelta;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/PositionDelta;

    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->calculateOccupiedCells(Ljava/util/List;)V

    return-void
.end method

.method public reset(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/CellPositionerWorkspace;->resetDeltas()V

    return-void
.end method

.method public resetDragDelta()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    return-void
.end method

.method public updateDeltasForDrag(Lcom/android/launcher2/PositionDelta;Lcom/android/launcher2/WidgetSizes;IIZZZ)Z
    .locals 14
    .param p1    # Lcom/android/launcher2/PositionDelta;
    .param p2    # Lcom/android/launcher2/WidgetSizes;
    .param p3    # I
    .param p4    # I
    .param p5    # Z
    .param p6    # Z
    .param p7    # Z

    iput-object p1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mShrinkingEnabled:Z

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/launcher2/CellPositionerWorkspace;->resetDeltas()V

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v1}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getCellWidth()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellWidth:I

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v1}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getCellHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellHeight:I

    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    const/4 v1, 0x1

    if-lt v4, v1, :cond_0

    const/4 v1, 0x1

    if-ge v5, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "span must be at least 1! spanX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   spanY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v1, v6}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v1, v6}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object v1, p0

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v6, 0x1

    aget v1, v1, v6

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->tryRearrange(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->tryRearrange(Z)Z

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v9, v4

    move v10, v5

    :cond_4
    move/from16 v0, p3

    if-gt v9, v0, :cond_5

    move/from16 v0, p4

    if-le v10, v0, :cond_a

    :cond_5
    if-le v9, v10, :cond_7

    move/from16 v0, p3

    if-le v9, v0, :cond_7

    add-int/lit8 v9, v9, -0x1

    :goto_1
    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/WidgetSizes;->getAvailableSizeCount()I

    move-result v1

    if-lez v1, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Lcom/android/launcher2/WidgetSizes;->isAvailableSize(II)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    move-object v6, p0

    move v7, v2

    move v8, v3

    invoke-direct/range {v6 .. v13}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v9}, Lcom/android/launcher2/PositionDelta;->setSpanX(I)V

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v10}, Lcom/android/launcher2/PositionDelta;->setSpanY(I)V

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->tryRearrange(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->tryRearrange(Z)Z

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_7
    move/from16 v0, p4

    if-le v10, v0, :cond_8

    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    :cond_8
    move/from16 v0, p3

    if-le v9, v0, :cond_9

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_a
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/PositionDelta;->setSpanX(I)V

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/PositionDelta;->setSpanY(I)V

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    goto/16 :goto_0
.end method
