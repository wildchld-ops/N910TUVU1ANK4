.class public Lcom/visionobjects/stylus/core/IntegerRange;
.super Ljava/lang/Object;
.source "IntegerRange.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_IntegerRange__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/IntegerRange;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_IntegerRange__SWIG_1(II)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/IntegerRange;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/IntegerRange;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/IntegerRange;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/IntegerRange;->a(Lcom/visionobjects/stylus/core/IntegerRange;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_IntegerRange__SWIG_2(JLcom/visionobjects/stylus/core/IntegerRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/IntegerRange;-><init>(JZ)V

    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/IntegerRange;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    goto :goto_0
.end method


# virtual methods
.method public begin()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->IntegerRange_begin(JLcom/visionobjects/stylus/core/IntegerRange;)I

    move-result v0

    return v0
.end method

.method public contains(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->IntegerRange_contains__SWIG_0(JLcom/visionobjects/stylus/core/IntegerRange;I)Z

    move-result v0

    return v0
.end method

.method public contains(Lcom/visionobjects/stylus/core/IntegerRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/IntegerRange;->a(Lcom/visionobjects/stylus/core/IntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->IntegerRange_contains__SWIG_1(JLcom/visionobjects/stylus/core/IntegerRange;JLcom/visionobjects/stylus/core/IntegerRange;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_IntegerRange(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J
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

.method public end()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->IntegerRange_end(JLcom/visionobjects/stylus/core/IntegerRange;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/visionobjects/stylus/core/IntegerRange;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/visionobjects/stylus/core/IntegerRange;

    invoke-virtual {p0, p1}, Lcom/visionobjects/stylus/core/IntegerRange;->nativeEquals(Lcom/visionobjects/stylus/core/IntegerRange;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/IntegerRange;->delete()V

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->IntegerRange_hashCode(JLcom/visionobjects/stylus/core/IntegerRange;)I

    move-result v0

    return v0
.end method

.method public intersectedWith(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/IntegerRange;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/IntegerRange;",
            ">;"
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
    new-instance v6, Lcom/visionobjects/stylus/core/ListIntegerRange;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListIntegerRange;->getCPtr(Lcom/visionobjects/stylus/core/ListIntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->IntegerRange_intersectedWith(JLcom/visionobjects/stylus/core/IntegerRange;JLcom/visionobjects/stylus/core/ListIntegerRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListIntegerRange;-><init>(JZ)V

    return-object v6
.end method

.method public intersects(Lcom/visionobjects/stylus/core/IntegerRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/IntegerRange;->a(Lcom/visionobjects/stylus/core/IntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->IntegerRange_intersects(JLcom/visionobjects/stylus/core/IntegerRange;JLcom/visionobjects/stylus/core/IntegerRange;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->IntegerRange_isEmpty(JLcom/visionobjects/stylus/core/IntegerRange;)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->IntegerRange_length(JLcom/visionobjects/stylus/core/IntegerRange;)I

    move-result v0

    return v0
.end method

.method public nativeEquals(Lcom/visionobjects/stylus/core/IntegerRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/IntegerRange;->a(Lcom/visionobjects/stylus/core/IntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->IntegerRange_nativeEquals(JLcom/visionobjects/stylus/core/IntegerRange;JLcom/visionobjects/stylus/core/IntegerRange;)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/IntegerRange;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/IntegerRange;->a(Lcom/visionobjects/stylus/core/IntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->IntegerRange_notEquals(JLcom/visionobjects/stylus/core/IntegerRange;JLcom/visionobjects/stylus/core/IntegerRange;)Z

    move-result v0

    return v0
.end method

.method public substractedFrom(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/IntegerRange;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/IntegerRange;",
            ">;"
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
    new-instance v6, Lcom/visionobjects/stylus/core/ListIntegerRange;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListIntegerRange;->getCPtr(Lcom/visionobjects/stylus/core/ListIntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->IntegerRange_substractedFrom(JLcom/visionobjects/stylus/core/IntegerRange;JLcom/visionobjects/stylus/core/ListIntegerRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListIntegerRange;-><init>(JZ)V

    return-object v6
.end method

.method public unitedTo(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/IntegerRange;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/IntegerRange;",
            ">;"
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
    new-instance v6, Lcom/visionobjects/stylus/core/ListIntegerRange;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/IntegerRange;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListIntegerRange;->getCPtr(Lcom/visionobjects/stylus/core/ListIntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->IntegerRange_unitedTo(JLcom/visionobjects/stylus/core/IntegerRange;JLcom/visionobjects/stylus/core/ListIntegerRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListIntegerRange;-><init>(JZ)V

    return-object v6
.end method
