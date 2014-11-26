.class public Lcom/visionobjects/stylus/core/ItemRange;
.super Ljava/lang/Object;
.source "ItemRange.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ItemRange__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ItemRange;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/ItemRange;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkItem;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ItemRange__SWIG_2(JLcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ItemRange;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkItem;Lcom/visionobjects/stylus/core/IntegerRange;)V
    .locals 6

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/visionobjects/stylus/core/IntegerRange;->a(Lcom/visionobjects/stylus/core/IntegerRange;)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ItemRange__SWIG_3(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/IntegerRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ItemRange;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkItem;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/InkItem;",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/IntegerRange;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/InkItem;Ljava/util/List;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ItemRange;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/ItemRange;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ItemRange__SWIG_1(JLcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ItemRange;-><init>(JZ)V

    return-void
.end method

.method private static a(Lcom/visionobjects/stylus/core/InkItem;Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/InkItem;",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/IntegerRange;",
            ">;)J"
        }
    .end annotation

    new-instance v5, Lcom/visionobjects/stylus/core/ListIntegerRange;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListIntegerRange;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/IntegerRange;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListIntegerRange;->native_add(Lcom/visionobjects/stylus/core/IntegerRange;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListIntegerRange;->getCPtr(Lcom/visionobjects/stylus/core/ListIntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ItemRange__SWIG_4(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/ListIntegerRange;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static a(Lcom/visionobjects/stylus/core/ItemRange;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    goto :goto_0
.end method


# virtual methods
.method public append(Lcom/visionobjects/stylus/core/IntegerRange;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/IntegerRange;->a(Lcom/visionobjects/stylus/core/IntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_append__SWIG_0(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/IntegerRange;)V

    return-void
.end method

.method public append(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/IntegerRange;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Lcom/visionobjects/stylus/core/ListIntegerRange;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListIntegerRange;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/IntegerRange;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListIntegerRange;->native_add(Lcom/visionobjects/stylus/core/IntegerRange;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListIntegerRange;->getCPtr(Lcom/visionobjects/stylus/core/ListIntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_append__SWIG_1(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ListIntegerRange;)V

    return-void
.end method

.method public boundingRect()Lcom/visionobjects/stylus/core/Rect;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Rect;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_boundingRect(JLcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Rect;-><init>(JZ)V

    return-object v0
.end method

.method public contains(Lcom/visionobjects/stylus/core/InkLocation;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_contains__SWIG_0(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public contains(Lcom/visionobjects/stylus/core/ItemRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_contains__SWIG_1(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_ItemRange(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/visionobjects/stylus/core/ItemRange;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/visionobjects/stylus/core/ItemRange;

    invoke-virtual {p0, p1}, Lcom/visionobjects/stylus/core/ItemRange;->nativeEquals(Lcom/visionobjects/stylus/core/ItemRange;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public extractPaths()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Path;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListPath;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_extractPaths(JLcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListPath;-><init>(JZ)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/ItemRange;->delete()V

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_hashCode(JLcom/visionobjects/stylus/core/ItemRange;)I

    move-result v0

    return v0
.end method

.method public intersected(Lcom/visionobjects/stylus/core/ItemRange;)Lcom/visionobjects/stylus/core/ItemRange;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/ItemRange;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_intersected(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/ItemRange;-><init>(JZ)V

    return-object v6
.end method

.method public intersects(Lcom/visionobjects/stylus/core/ItemRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_intersects(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)Z

    move-result v0

    return v0
.end method

.method public is(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_is(JLcom/visionobjects/stylus/core/ItemRange;I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_isEmpty(JLcom/visionobjects/stylus/core/ItemRange;)Z

    move-result v0

    return v0
.end method

.method public isolatedForwardLigatureRemoved()Lcom/visionobjects/stylus/core/ItemRange;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/ItemRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_isolatedForwardLigatureRemoved(JLcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ItemRange;-><init>(JZ)V

    return-object v0
.end method

.method public item()Lcom/visionobjects/stylus/core/InkItem;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkItem;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_item(JLcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public length()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_length(JLcom/visionobjects/stylus/core/ItemRange;)I

    move-result v0

    return v0
.end method

.method public mapped(Lcom/visionobjects/stylus/core/Transform;Ljava/util/List;)Lcom/visionobjects/stylus/core/ItemRange;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/Transform;",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;)",
            "Lcom/visionobjects/stylus/core/ItemRange;"
        }
    .end annotation

    new-instance v8, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v8, p2}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v8, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v9, Lcom/visionobjects/stylus/core/ItemRange;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Transform;->a(Lcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_mapped(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/ItemRange;-><init>(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v9

    :catchall_0
    move-exception v0

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public nativeEquals(Lcom/visionobjects/stylus/core/ItemRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_nativeEquals(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/ItemRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_notEquals(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)Z

    move-result v0

    return v0
.end method

.method public rangeAt(I)Lcom/visionobjects/stylus/core/IntegerRange;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/IntegerRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_rangeAt(JLcom/visionobjects/stylus/core/ItemRange;I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/IntegerRange;-><init>(JZ)V

    return-object v0
.end method

.method public rangeCount()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_rangeCount(JLcom/visionobjects/stylus/core/ItemRange;)I

    move-result v0

    return v0
.end method

.method public ranges()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/IntegerRange;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListIntegerRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_ranges(JLcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListIntegerRange;-><init>(JZ)V

    return-object v0
.end method

.method public setItem(Lcom/visionobjects/stylus/core/InkItem;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_setItem(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/InkItem;)V

    return-void
.end method

.method public simplified(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/ItemRange;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v5, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/visionobjects/stylus/core/ListInt;

    invoke-direct {v8, p2}, Lcom/visionobjects/stylus/core/ListInt;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/visionobjects/stylus/core/ListInt;->native_add(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v9, Lcom/visionobjects/stylus/core/ListItemRange;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/visionobjects/stylus/core/ListInt;->getCPtr(Lcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_simplified(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ListInkItem;JLcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListItemRange;-><init>(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v9

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method public split(Lcom/visionobjects/stylus/core/ItemRange;Lcom/visionobjects/stylus/core/ItemRange;Lcom/visionobjects/stylus/core/ItemRange;)V
    .locals 12

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v6

    invoke-static {p3}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_split(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)V

    return-void
.end method

.method public substracted(Lcom/visionobjects/stylus/core/ItemRange;)Lcom/visionobjects/stylus/core/ItemRange;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/ItemRange;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_substracted(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/ItemRange;-><init>(JZ)V

    return-object v6
.end method

.method public timeShifted(J)Lcom/visionobjects/stylus/core/ItemRange;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/ItemRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_timeShifted(JLcom/visionobjects/stylus/core/ItemRange;J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ItemRange;-><init>(JZ)V

    return-object v0
.end method

.method public united(Lcom/visionobjects/stylus/core/ItemRange;)Lcom/visionobjects/stylus/core/ItemRange;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/ItemRange;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItemRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItemRange_united(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/ItemRange;-><init>(JZ)V

    return-object v6
.end method
