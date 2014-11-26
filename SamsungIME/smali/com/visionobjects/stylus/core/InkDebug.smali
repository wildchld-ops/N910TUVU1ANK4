.class public Lcom/visionobjects/stylus/core/InkDebug;
.super Lcom/visionobjects/stylus/core/Log;
.source "InkDebug.java"


# instance fields
.field private b:J


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkDebug__SWIG_0(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkDebug;-><init>(JZ)V

    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 3

    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkDebug_SWIGUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Log;-><init>(JZ)V

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkDebug;)V
    .locals 3

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkDebug__SWIG_1(JLcom/visionobjects/stylus/core/InkDebug;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkDebug;-><init>(JZ)V

    return-void

    :cond_0
    iget-wide v0, p1, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/Log;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Log;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InkDebug(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InkDebug;->b:J

    :cond_1
    invoke-super {p0}, Lcom/visionobjects/stylus/core/Log;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkDebug;->delete()V

    return-void
.end method
