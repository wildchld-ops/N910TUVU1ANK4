.class public Lcom/visionobjects/stylus/core/VectorByte;
.super Ljava/lang/Object;
.source "VectorByte.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VectorByte__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VectorByte;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VectorByte__SWIG_1(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VectorByte;-><init>(JZ)V

    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/VectorByte;)V
    .locals 3

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VectorByte__SWIG_2(JLcom/visionobjects/stylus/core/VectorByte;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VectorByte;-><init>(JZ)V

    return-void

    :cond_0
    iget-wide v0, p1, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    goto :goto_0
.end method


# virtual methods
.method public add(S)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_add(JLcom/visionobjects/stylus/core/VectorByte;S)V

    return-void
.end method

.method public capacity()J
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_capacity(JLcom/visionobjects/stylus/core/VectorByte;)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_clear(JLcom/visionobjects/stylus/core/VectorByte;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_VectorByte(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J
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

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/VectorByte;->delete()V

    return-void
.end method

.method public get(I)S
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_get(JLcom/visionobjects/stylus/core/VectorByte;I)S

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_isEmpty(JLcom/visionobjects/stylus/core/VectorByte;)Z

    move-result v0

    return v0
.end method

.method public reserve(J)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_reserve(JLcom/visionobjects/stylus/core/VectorByte;J)V

    return-void
.end method

.method public set(IS)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_set(JLcom/visionobjects/stylus/core/VectorByte;IS)V

    return-void
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_size(JLcom/visionobjects/stylus/core/VectorByte;)J

    move-result-wide v0

    return-wide v0
.end method
