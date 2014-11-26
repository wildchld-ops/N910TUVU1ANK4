.class public Lcom/visionobjects/stylus/core/Path;
.super Ljava/lang/Object;
.source "Path.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Path__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Path;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Path;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Path;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Path;->a(Lcom/visionobjects/stylus/core/Path;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Path__SWIG_1(JLcom/visionobjects/stylus/core/Path;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Path;-><init>(JZ)V

    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/Path;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    goto :goto_0
.end method


# virtual methods
.method public addArrowHead(Lcom/visionobjects/stylus/core/Point;Lcom/visionobjects/stylus/core/Point;)V
    .locals 9

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_addArrowHead(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)V

    return-void
.end method

.method public addSampledArc(Lcom/visionobjects/stylus/core/Point;FFFFFF)V
    .locals 12

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v0 .. v11}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_addSampledArc__SWIG_0(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;FFFFFF)V

    return-void
.end method

.method public addSampledArc(Lcom/visionobjects/stylus/core/Point;FFFFFI)V
    .locals 12

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v0 .. v11}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_addSampledArc__SWIG_1(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;FFFFFI)V

    return-void
.end method

.method public addSampledLine(Lcom/visionobjects/stylus/core/Point;Lcom/visionobjects/stylus/core/Point;F)V
    .locals 10

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_addSampledLine__SWIG_0(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;F)V

    return-void
.end method

.method public addSampledLine(Lcom/visionobjects/stylus/core/Point;Lcom/visionobjects/stylus/core/Point;I)V
    .locals 10

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_addSampledLine__SWIG_1(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;I)V

    return-void
.end method

.method public boundingRect()Lcom/visionobjects/stylus/core/Rect;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Rect;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_boundingRect(JLcom/visionobjects/stylus/core/Path;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Rect;-><init>(JZ)V

    return-object v0
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_clear(JLcom/visionobjects/stylus/core/Path;)V

    return-void
.end method

.method public clipped(Lcom/visionobjects/stylus/core/Rect;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Path;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/visionobjects/stylus/core/ListPath;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_clipped(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListPath;-><init>(JZ)V

    return-object v6
.end method

.method public close()V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_close(JLcom/visionobjects/stylus/core/Path;)V

    return-void
.end method

.method public closingLength()F
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_closingLength(JLcom/visionobjects/stylus/core/Path;)F

    move-result v0

    return v0
.end method

.method public convexHull()Lcom/visionobjects/stylus/core/Path;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Path;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_convexHull(JLcom/visionobjects/stylus/core/Path;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Path;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/Path;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Path;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_Path(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J
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

.method public elementAt(I)Lcom/visionobjects/stylus/core/Point;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Point;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_elementAt(JLcom/visionobjects/stylus/core/Path;I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v0
.end method

.method public elementCount()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_elementCount(JLcom/visionobjects/stylus/core/Path;)I

    move-result v0

    return v0
.end method

.method public elements(II[F[F)V
    .locals 7

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_elements(JLcom/visionobjects/stylus/core/Path;II[F[F)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/visionobjects/stylus/core/Path;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/visionobjects/stylus/core/Path;

    invoke-virtual {p0, p1}, Lcom/visionobjects/stylus/core/Path;->nativeEquals(Lcom/visionobjects/stylus/core/Path;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Path;->delete()V

    return-void
.end method

.method public getCoarsePolyline(FFFI)Lcom/visionobjects/stylus/core/Path;
    .locals 8

    new-instance v7, Lcom/visionobjects/stylus/core/Path;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_getCoarsePolyline(JLcom/visionobjects/stylus/core/Path;FFFI)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/visionobjects/stylus/core/Path;-><init>(JZ)V

    return-object v7
.end method

.method public getFastPolylineOptimal(FF)Lcom/visionobjects/stylus/core/Path;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Path;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_getFastPolylineOptimal(JLcom/visionobjects/stylus/core/Path;FF)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Path;-><init>(JZ)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_hashCode(JLcom/visionobjects/stylus/core/Path;)I

    move-result v0

    return v0
.end method

.method public intersections(Lcom/visionobjects/stylus/core/Path;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/Path;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Point;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/visionobjects/stylus/core/ListPoint;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Path;->a(Lcom/visionobjects/stylus/core/Path;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_intersections(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Path;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListPoint;-><init>(JZ)V

    return-object v6
.end method

.method public intersects(Lcom/visionobjects/stylus/core/Rect;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_intersects(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Rect;)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_isClosed(JLcom/visionobjects/stylus/core/Path;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_isEmpty(JLcom/visionobjects/stylus/core/Path;)Z

    move-result v0

    return v0
.end method

.method public lastElement()Lcom/visionobjects/stylus/core/Point;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Point;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_lastElement(JLcom/visionobjects/stylus/core/Path;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v0
.end method

.method public length()F
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_length(JLcom/visionobjects/stylus/core/Path;)F

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_lineTo__SWIG_1(JLcom/visionobjects/stylus/core/Path;FF)V

    return-void
.end method

.method public lineTo(Lcom/visionobjects/stylus/core/Point;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_lineTo__SWIG_0(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;)V

    return-void
.end method

.method public minDistance(Lcom/visionobjects/stylus/core/Path;)F
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Path;->a(Lcom/visionobjects/stylus/core/Path;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_minDistance(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Path;)F

    move-result v0

    return v0
.end method

.method public nativeEquals(Lcom/visionobjects/stylus/core/Path;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Path;->a(Lcom/visionobjects/stylus/core/Path;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_nativeEquals(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Path;)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/Path;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Path;->a(Lcom/visionobjects/stylus/core/Path;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_notEquals(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Path;)Z

    move-result v0

    return v0
.end method

.method public startAt(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_startAt__SWIG_1(JLcom/visionobjects/stylus/core/Path;FF)V

    return-void
.end method

.method public startAt(Lcom/visionobjects/stylus/core/Point;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_startAt__SWIG_0(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;)V

    return-void
.end method

.method public stretch(F)Lcom/visionobjects/stylus/core/Path;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Path;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_stretch(JLcom/visionobjects/stylus/core/Path;F)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Path;-><init>(JZ)V

    return-object v0
.end method

.method public surrounds(Lcom/visionobjects/stylus/core/Point;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Path;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Path_surrounds(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;)Z

    move-result v0

    return v0
.end method
