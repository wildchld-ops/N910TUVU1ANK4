.class public Lcom/visionobjects/stylus/core/InkRange;
.super Ljava/lang/Object;
.source "InkRange.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkRange__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/InkRange;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkItem;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkRange__SWIG_2(JLcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkRange__SWIG_1(JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/ItemRange;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkRange__SWIG_3(JLcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/ItemRange;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Ljava/util/List;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/InkRange;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/ItemRange;",
            ">;)J"
        }
    .end annotation

    new-instance v2, Lcom/visionobjects/stylus/core/ListItemRange;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListItemRange;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/ItemRange;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListItemRange;->native_add(Lcom/visionobjects/stylus/core/ItemRange;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListItemRange;->getCPtr(Lcom/visionobjects/stylus/core/ListItemRange;)J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkRange__SWIG_4(JLcom/visionobjects/stylus/core/ListItemRange;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRealInkRange(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkRange;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkRange;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_getRealInkRange(JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public static getRealInkRangeBoundingRect(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/Rect;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Rect;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_getRealInkRangeBoundingRect(JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Rect;-><init>(JZ)V

    return-object v0
.end method


# virtual methods
.method public append(Lcom/visionobjects/stylus/core/ItemRange;)I
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_append__SWIG_1(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/ItemRange;)I

    move-result v0

    return v0
.end method

.method public append(Lcom/visionobjects/stylus/core/ItemRange;I)I
    .locals 7

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/ItemRange;->a(Lcom/visionobjects/stylus/core/ItemRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_append__SWIG_0(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/ItemRange;I)I

    move-result v0

    return v0
.end method

.method public append(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkRange;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_append__SWIG_2(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-object v6
.end method

.method public barycenter()Lcom/visionobjects/stylus/core/Point;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Point;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_barycenter(JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v0
.end method

.method public begin()Lcom/visionobjects/stylus/core/InkLocation;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkLocation;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_begin(JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkLocation;-><init>(JZ)V

    return-object v0
.end method

.method public boundingRect()Lcom/visionobjects/stylus/core/Rect;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Rect;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_boundingRect(JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Rect;-><init>(JZ)V

    return-object v0
.end method

.method public contains(Lcom/visionobjects/stylus/core/InkLocation;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_contains__SWIG_0(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public contains(Lcom/visionobjects/stylus/core/InkRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_contains__SWIG_1(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InkRange;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkRange;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InkRange(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J
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

.method public duration()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_duration(JLcom/visionobjects/stylus/core/InkRange;)I

    move-result v0

    return v0
.end method

.method public end()Lcom/visionobjects/stylus/core/InkLocation;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkLocation;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_end(JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkLocation;-><init>(JZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/visionobjects/stylus/core/InkRange;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/visionobjects/stylus/core/InkRange;

    invoke-virtual {p0, p1}, Lcom/visionobjects/stylus/core/InkRange;->nativeEquals(Lcom/visionobjects/stylus/core/InkRange;)Z

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

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_extractPaths(JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListPath;-><init>(JZ)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkRange;->delete()V

    return-void
.end method

.method public has(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_has(JLcom/visionobjects/stylus/core/InkRange;I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_hashCode(JLcom/visionobjects/stylus/core/InkRange;)I

    move-result v0

    return v0
.end method

.method public intersected(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkRange;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_intersected(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-object v6
.end method

.method public intersects(Lcom/visionobjects/stylus/core/InkRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_intersects(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)Z

    move-result v0

    return v0
.end method

.method public is(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_is(JLcom/visionobjects/stylus/core/InkRange;I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_isEmpty(JLcom/visionobjects/stylus/core/InkRange;)Z

    move-result v0

    return v0
.end method

.method public isolatedForwardLigatureRemoved()Lcom/visionobjects/stylus/core/InkRange;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_isolatedForwardLigatureRemoved(JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public length()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_length(JLcom/visionobjects/stylus/core/InkRange;)I

    move-result v0

    return v0
.end method

.method public limits()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkLocation;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListInkLocation;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_limits(JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListInkLocation;-><init>(JZ)V

    return-object v0
.end method

.method public mapped(Lcom/visionobjects/stylus/core/Transform;Ljava/util/List;)Lcom/visionobjects/stylus/core/InkRange;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/Transform;",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;)",
            "Lcom/visionobjects/stylus/core/InkRange;"
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
    new-instance v9, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Transform;->a(Lcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_mapped(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V
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

.method public nativeEquals(Lcom/visionobjects/stylus/core/InkRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_nativeEquals(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/InkRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_notEquals(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)Z

    move-result v0

    return v0
.end method

.method public rangeAt(I)Lcom/visionobjects/stylus/core/ItemRange;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/ItemRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_rangeAt(JLcom/visionobjects/stylus/core/InkRange;I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ItemRange;-><init>(JZ)V

    return-object v0
.end method

.method public rangeCount()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_rangeCount(JLcom/visionobjects/stylus/core/InkRange;)I

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
            "Lcom/visionobjects/stylus/core/ItemRange;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListItemRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_ranges(JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListItemRange;-><init>(JZ)V

    return-object v0
.end method

.method public sanityCheck()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_sanityCheck(JLcom/visionobjects/stylus/core/InkRange;)Z

    move-result v0

    return v0
.end method

.method public simplified(Ljava/util/List;Ljava/util/List;)Lcom/visionobjects/stylus/core/InkRange;
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
            "Lcom/visionobjects/stylus/core/InkRange;"
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
    new-instance v9, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/visionobjects/stylus/core/ListInt;->getCPtr(Lcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_simplified(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/ListInkItem;JLcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V
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

.method public split(Lcom/visionobjects/stylus/core/InkRange;Lcom/visionobjects/stylus/core/InkRange;Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 12

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v6

    invoke-static {p3}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_split(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)V

    return-void
.end method

.method public substracted(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkRange;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_substracted(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-object v6
.end method

.method public timeShifted(J)Lcom/visionobjects/stylus/core/InkRange;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_timeShifted(JLcom/visionobjects/stylus/core/InkRange;J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public timeStamp()Lcom/visionobjects/stylus/core/VoTimeStamp;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/VoTimeStamp;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_timeStamp(JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/VoTimeStamp;-><init>(JZ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkRange;->ranges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "e"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkRange;->ranges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_3

    const-string v3, "1 item :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkRange;->ranges()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    if-le v2, v3, :cond_2

    add-int/lit8 v0, v2, -0x4

    const-string v3, ",..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    if-ge v0, v2, :cond_0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkRange;->ranges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public united(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkRange;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkRange_united(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-object v6
.end method
