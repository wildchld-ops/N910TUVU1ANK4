.class public final Lcom/visionobjects/textwidget/d/a/a;
.super Ljava/lang/Object;
.source "InkFieldFactory.java"


# direct methods
.method public static a(FLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/visionobjects/textwidget/d/a/a;->a(Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v1

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/InkField;->inkLayout()Lcom/visionobjects/stylus/core/InkLayout;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/visionobjects/stylus/core/InkLayout;->setGuidelines(F)V

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/InkLayout;->setModifiers(I)V

    invoke-virtual {v1, v2}, Lcom/visionobjects/stylus/core/InkField;->setInkLayout(Lcom/visionobjects/stylus/core/InkLayout;)V

    return-object v1

    :cond_0
    new-instance v1, Lcom/visionobjects/stylus/core/InkField;

    invoke-direct {v1}, Lcom/visionobjects/stylus/core/InkField;-><init>()V

    const/4 v0, 0x4

    goto :goto_0
.end method

.method private static a(Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    invoke-static {p0}, Lcom/visionobjects/textwidget/d/a/c;->a(Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/visionobjects/stylus/core/InkItem;->createGuideBox(Lcom/visionobjects/stylus/core/Rect;)Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v0

    invoke-static {v0}, Lcom/visionobjects/stylus/core/InkField;->fromItem(Lcom/visionobjects/stylus/core/InkItem;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    new-instance v1, Lcom/visionobjects/stylus/core/InkTag;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkField;->topLevelSegment()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/visionobjects/stylus/core/InkTag;-><init>(ILcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {v0, v1}, Lcom/visionobjects/stylus/core/InkField;->taggedWith(Lcom/visionobjects/stylus/core/InkTag;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/visionobjects/stylus/core/InkField;FLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;
    .locals 2

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkField;->topLevelSegment()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/visionobjects/stylus/core/InkRange;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2}, Lcom/visionobjects/textwidget/d/a/a;->a(FLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/visionobjects/textwidget/d/a/a;->a(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkField;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkField;)Lcom/visionobjects/stylus/core/InkField;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/InkField;->grafted(Ljava/util/List;I)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/visionobjects/textwidget/f/a/b;FFLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;
    .locals 11

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lcom/visionobjects/stylus/core/InkRange;

    invoke-direct {v5}, Lcom/visionobjects/stylus/core/InkRange;-><init>()V

    new-instance v6, Lcom/visionobjects/stylus/core/InkRange;

    invoke-direct {v6}, Lcom/visionobjects/stylus/core/InkRange;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/visionobjects/stylus/core/InkRange;->has(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v8

    invoke-static {v8}, Lcom/visionobjects/stylus/core/InkField;->fromSegment(Lcom/visionobjects/stylus/core/Segment;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->q()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/visionobjects/stylus/core/InkRange;->append(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkRange;

    :cond_1
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->r()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/visionobjects/stylus/core/InkRange;->append(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkRange;

    :cond_2
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v8

    array-length v9, v8

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_3

    aget-object v10, v8, v1

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-eqz p3, :cond_8

    if-nez v0, :cond_5

    invoke-static {p3}, Lcom/visionobjects/textwidget/d/a/a;->a(Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v4, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkField;->topLevelSegment()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/InkRange;->append(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkRange;

    :cond_5
    const/4 v0, 0x5

    :goto_2
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/a/b;->d()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_7

    invoke-virtual {p0, v1}, Lcom/visionobjects/textwidget/f/a/b;->a(I)Lcom/visionobjects/textwidget/f/b;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v8}, Lcom/visionobjects/textwidget/f/b;->a()Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/visionobjects/stylus/core/InkField;->grafted(Ljava/util/List;I)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/InkField;->inkLayout()Lcom/visionobjects/stylus/core/InkLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/visionobjects/stylus/core/InkLayout;->setGuidelines(F)V

    invoke-virtual {v2, p2}, Lcom/visionobjects/stylus/core/InkLayout;->setMidlineShift(F)V

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/InkLayout;->setModifiers(I)V

    invoke-virtual {v1, v2}, Lcom/visionobjects/stylus/core/InkField;->setInkLayout(Lcom/visionobjects/stylus/core/InkLayout;)V

    new-instance v0, Lcom/visionobjects/stylus/core/InkTag;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v5}, Lcom/visionobjects/stylus/core/InkTag;-><init>(ILcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {v1, v0}, Lcom/visionobjects/stylus/core/InkField;->setTag(Lcom/visionobjects/stylus/core/InkTag;)V

    new-instance v0, Lcom/visionobjects/stylus/core/InkTag;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v6}, Lcom/visionobjects/stylus/core/InkTag;-><init>(ILcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {v1, v0}, Lcom/visionobjects/stylus/core/InkField;->setTag(Lcom/visionobjects/stylus/core/InkTag;)V

    invoke-virtual {v1, v3}, Lcom/visionobjects/stylus/core/InkField;->setPendingStrokes(Ljava/util/List;)V

    const/high16 v0, 0x20000

    invoke-virtual {v1, v0}, Lcom/visionobjects/stylus/core/InkField;->formatted(I)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    return-object v0

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;FF[Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/util/List;)Lcom/visionobjects/stylus/core/InkField;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FF[",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_0

    aget-object v2, p4, v1

    invoke-static {v2}, Lcom/visionobjects/textwidget/d/a/c;->a(Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/visionobjects/stylus/core/InkItem;->createCharBox(Lcom/visionobjects/stylus/core/Rect;)Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p6, :cond_1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/InkField;->fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FFF)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    :goto_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/visionobjects/stylus/core/InkField;->formatted(I)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v1

    if-eqz p5, :cond_2

    invoke-static {p5}, Lcom/visionobjects/textwidget/d/a/a;->a(Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/d/a/a;->a(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkField;)Lcom/visionobjects/stylus/core/InkField;

    const/4 v0, 0x5

    :goto_2
    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/InkField;->inkLayout()Lcom/visionobjects/stylus/core/InkLayout;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/visionobjects/stylus/core/InkLayout;->setGuidelines(F)V

    invoke-virtual {v2, p3}, Lcom/visionobjects/stylus/core/InkLayout;->setMidlineShift(F)V

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/InkLayout;->setModifiers(I)V

    invoke-virtual {v1, v2}, Lcom/visionobjects/stylus/core/InkField;->setInkLayout(Lcom/visionobjects/stylus/core/InkLayout;)V

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/InkField;->topLevelSegment()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v0

    new-instance v2, Lcom/visionobjects/stylus/core/InkTag;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/visionobjects/stylus/core/InkTag;-><init>(ILcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {v1, v2}, Lcom/visionobjects/stylus/core/InkField;->setTag(Lcom/visionobjects/stylus/core/InkTag;)V

    new-instance v2, Lcom/visionobjects/stylus/core/InkTag;

    invoke-direct {v2, v7, v0}, Lcom/visionobjects/stylus/core/InkTag;-><init>(ILcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {v1, v2}, Lcom/visionobjects/stylus/core/InkField;->setTag(Lcom/visionobjects/stylus/core/InkTag;)V

    return-object v1

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/InkField;->fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FFFLjava/util/List;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v7

    goto :goto_2
.end method
