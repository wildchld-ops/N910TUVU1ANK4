.class public Lcom/android/launcher2/CellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "CellLayoutChildren.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "CellLayoutChildren"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mGapX:I

.field private mGapY:I

.field private mHiddenItem:Lcom/android/launcher2/BaseItem;

.field protected mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpCellXY:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mTmpCellXY:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher2/CellLayoutChildren$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayoutChildren$1;-><init>(Lcom/android/launcher2/CellLayoutChildren;)V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;Z)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add a duplicate entry for this item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v4, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v4, :cond_0

    instance-of v4, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v4, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_2

    sget-boolean v4, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "CellLayoutChildren"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addView() adding view to Hotseat\'s CellLayoutChildren @ index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and title = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " child count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    instance-of v4, p1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    if-eqz v4, :cond_1

    check-cast p1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    invoke-interface {p1}, Lcom/android/launcher2/DynamicShadowMixin$Holder;->getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DynamicShadowMixin;->setViewToInvalidate(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    instance-of v4, v1, Lcom/android/launcher2/AllappsIcon;

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "CellLayoutChildren"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addView() adding all apps icon to Hotseat\'s CellLayoutChildren @ index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " child count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-interface {v2, p1, v0}, Lcom/android/launcher2/ItemViewBuilder;->buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne p1, v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object v1
.end method

.method public buildViews()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Tried to build item views when we already had views."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public disableHardwareLayers()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public drawShadows(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    invoke-interface {v3}, Lcom/android/launcher2/DynamicShadowMixin$Holder;->getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, p1}, Lcom/android/launcher2/DynamicShadowMixin;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public findFolderItem(J)Lcom/android/launcher2/BaseItem;
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget-wide v2, v1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    instance-of v4, v0, Lcom/android/launcher2/AllappsIcon;

    if-nez v4, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 9

    const/4 v4, 0x0

    if-nez p1, :cond_1

    move-object v3, v4

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Lcom/android/launcher2/BaseItem;

    if-eqz v5, :cond_2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-wide v5, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v7, p1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v3, v4

    goto :goto_0
.end method

.method public getChildFromPosition(I)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v3

    if-ne v3, p1, :cond_0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getHiddenItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method public getItemAt(I)Lcom/android/launcher2/BaseItem;
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemAt(II)Lcom/android/launcher2/BaseItem;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method public hasItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterateBaseItems(Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Closure:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator",
            "<TClosure;>;TClosure;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    invoke-interface {p1, v1, p2}, Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;->iterate(Lcom/android/launcher2/BaseItem;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    return-void
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 8

    const/high16 v7, 0x40000000

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v3, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    iget v6, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIII)V

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method notifyWidgetsOfPageScroll(IIII)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/launcher2/SurfaceWidgetView;->onPageScroll(IIII)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_2

    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v9, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v10, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    :try_start_0
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v0, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-boolean v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    iget-object v7, p0, Lcom/android/launcher2/CellLayoutChildren;->mTmpCellXY:[I

    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v9

    iget v4, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v10

    iget v5, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :catch_0
    move-exception v12

    sget-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child layout exception. child tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "CellLayoutChildren cannot accept an UNSPECIFIED MeasureSpec"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v4, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onViewAddedInCLC(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "CellLayoutChildren"

    const-string v2, "Adding view to CellLayoutChildren without an associated item."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    invoke-interface {v2, p1, v1, v0}, Lcom/android/launcher2/ItemViewBuilder;->onViewAdded(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->onViewAddedToLayout(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onViewRemovedInCLC(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public removeAllItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    :cond_0
    return-void
.end method

.method public setCellDimensions(IIII)V
    .locals 3

    iput p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    iput p2, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    iput p3, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    iput p4, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    sget-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCellDimensions. width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gapX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gapY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    return-void
.end method

.method public setItemVisibility(Lcom/android/launcher2/BaseItem;I)V
    .locals 2

    if-nez p2, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method public setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V
    .locals 4

    iget v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    iget v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    iget v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    iget v3, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIII)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateChildrenToNewPage(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    instance-of v4, v2, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lcom/android/launcher2/HomeFolderItem;

    check-cast v3, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/HomeFolderItem;->addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    :cond_0
    iput p1, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
