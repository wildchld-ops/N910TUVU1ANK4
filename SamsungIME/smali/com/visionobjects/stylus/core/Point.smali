.class public Lcom/visionobjects/stylus/core/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Point__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3

    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Point__SWIG_1(FF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/Point;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Point;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Point__SWIG_2(JLcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/Point;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    goto :goto_0
.end method

.method public static middle(Lcom/visionobjects/stylus/core/Point;Lcom/visionobjects/stylus/core/Point;)Lcom/visionobjects/stylus/core/Point;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/Point;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_middle(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v6
.end method


# virtual methods
.method public addAffect(Lcom/visionobjects/stylus/core/Point;)Lcom/visionobjects/stylus/core/Point;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/Point;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_addAffect(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v6
.end method

.method public almostEquals(Lcom/visionobjects/stylus/core/Point;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_almostEquals__SWIG_1(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)Z

    move-result v0

    return v0
.end method

.method public almostEquals(Lcom/visionobjects/stylus/core/Point;F)Z
    .locals 7

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_almostEquals__SWIG_0(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;F)Z

    move-result v0

    return v0
.end method

.method public angle()F
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_angle(JLcom/visionobjects/stylus/core/Point;)F

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_clear(JLcom/visionobjects/stylus/core/Point;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/Point;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Point;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_Point(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J
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

    instance-of v0, p1, Lcom/visionobjects/stylus/core/Point;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/visionobjects/stylus/core/Point;

    invoke-virtual {p0, p1}, Lcom/visionobjects/stylus/core/Point;->nativeEquals(Lcom/visionobjects/stylus/core/Point;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Point;->delete()V

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_hashCode(JLcom/visionobjects/stylus/core/Point;)I

    move-result v0

    return v0
.end method

.method public isNull()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_isNull(JLcom/visionobjects/stylus/core/Point;)Z

    move-result v0

    return v0
.end method

.method public minusAffect(Lcom/visionobjects/stylus/core/Point;)Lcom/visionobjects/stylus/core/Point;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/Point;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_minusAffect(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v6
.end method

.method public nativeEquals(Lcom/visionobjects/stylus/core/Point;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_nativeEquals(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)Z

    move-result v0

    return v0
.end method

.method public norm()F
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_norm(JLcom/visionobjects/stylus/core/Point;)F

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/Point;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_notEquals(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)Z

    move-result v0

    return v0
.end method

.method public rotated(F)Lcom/visionobjects/stylus/core/Point;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Point;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_rotated(JLcom/visionobjects/stylus/core/Point;F)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v0
.end method

.method public setX(F)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_setX(JLcom/visionobjects/stylus/core/Point;F)V

    return-void
.end method

.method public setY(F)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_setY(JLcom/visionobjects/stylus/core/Point;F)V

    return-void
.end method

.method public x()F
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_x(JLcom/visionobjects/stylus/core/Point;)F

    move-result v0

    return v0
.end method

.method public y()F
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_y(JLcom/visionobjects/stylus/core/Point;)F

    move-result v0

    return v0
.end method
