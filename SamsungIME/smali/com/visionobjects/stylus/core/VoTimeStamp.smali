.class public Lcom/visionobjects/stylus/core/VoTimeStamp;
.super Ljava/lang/Object;
.source "VoTimeStamp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/VoTimeStamp$Type;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VoTimeStamp__SWIG_1()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoTimeStamp;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VoTimeStamp__SWIG_0(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoTimeStamp;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VoTimeStamp__SWIG_2(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoTimeStamp;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/VoTimeStamp;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VoTimeStamp__SWIG_3(JLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoTimeStamp;-><init>(JZ)V

    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_VoTimeStamp(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J
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

.method public elapsed()J
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_elapsed__SWIG_1(JLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsed(I)J
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_elapsed__SWIG_0(JLcom/visionobjects/stylus/core/VoTimeStamp;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/visionobjects/stylus/core/VoTimeStamp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/visionobjects/stylus/core/VoTimeStamp;

    invoke-virtual {p0, p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->nativeEquals(Lcom/visionobjects/stylus/core/VoTimeStamp;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/VoTimeStamp;->delete()V

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_hashCode(JLcom/visionobjects/stylus/core/VoTimeStamp;)I

    move-result v0

    return v0
.end method

.method public isGreater(Lcom/visionobjects/stylus/core/VoTimeStamp;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_isGreater(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public isGreaterOrEqual(Lcom/visionobjects/stylus/core/VoTimeStamp;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_isGreaterOrEqual(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public isLower(Lcom/visionobjects/stylus/core/VoTimeStamp;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_isLower(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public isLowerOrEqual(Lcom/visionobjects/stylus/core/VoTimeStamp;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_isLowerOrEqual(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public milliseconds()J
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_milliseconds(JLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    return-wide v0
.end method

.method public millisecondsTo(Lcom/visionobjects/stylus/core/VoTimeStamp;)J
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_millisecondsTo(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    return-wide v0
.end method

.method public nativeEquals(Lcom/visionobjects/stylus/core/VoTimeStamp;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_nativeEquals(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/VoTimeStamp;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_notEquals(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public shifted(J)Lcom/visionobjects/stylus/core/VoTimeStamp;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/VoTimeStamp;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_shifted(JLcom/visionobjects/stylus/core/VoTimeStamp;J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/VoTimeStamp;-><init>(JZ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkDebug;->elapsed(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
