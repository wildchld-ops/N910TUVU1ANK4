.class public Lcom/visionobjects/stylus/core/Archive;
.super Ljava/lang/Object;
.source "Archive.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Archive_empty()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Archive;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Archive_version(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Archive;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Archive;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Archive;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Archive;->a(Lcom/visionobjects/stylus/core/Archive;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Archive__SWIG_2(JLcom/visionobjects/stylus/core/Archive;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Archive;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Archive__SWIG_0(Z[B)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Archive;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Archive__SWIG_1(Z[BI)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Archive;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Archive_bytes([B)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Archive;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>([BJ)V
    .locals 3

    invoke-static {p1, p2, p3}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Archive_bytes_version([BJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Archive;-><init>(JZ)V

    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/Archive;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/Archive;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Archive;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_Archive(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J
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

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Archive;->delete()V

    return-void
.end method

.method public getByteCount()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_getByteCount(JLcom/visionobjects/stylus/core/Archive;)I

    move-result v0

    return v0
.end method

.method public getBytes()[B
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_getBytes(JLcom/visionobjects/stylus/core/Archive;)[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_getVersion(JLcom/visionobjects/stylus/core/Archive;)J

    move-result-wide v0

    return-wide v0
.end method

.method public nativeEquals(Lcom/visionobjects/stylus/core/Archive;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Archive;->a(Lcom/visionobjects/stylus/core/Archive;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_nativeEquals(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/Archive;)Z

    move-result v0

    return v0
.end method

.method public readInkField(Lcom/visionobjects/stylus/core/InkItemUserParamsListener;)Lcom/visionobjects/stylus/core/InkField;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItemUserParamsListener;->a(Lcom/visionobjects/stylus/core/InkItemUserParamsListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_readInkField(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkItemUserParamsListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public readInkItem(Lcom/visionobjects/stylus/core/InkItemUserParamsListener;)Lcom/visionobjects/stylus/core/InkItem;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/InkItem;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItemUserParamsListener;->a(Lcom/visionobjects/stylus/core/InkItemUserParamsListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_readInkItem(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkItemUserParamsListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v6
.end method

.method public readInt(Lcom/visionobjects/stylus/core/InkItemUserParamsListener;)I
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItemUserParamsListener;->a(Lcom/visionobjects/stylus/core/InkItemUserParamsListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_readInt(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkItemUserParamsListener;)I

    move-result v0

    return v0
.end method

.method public readSegment(Lcom/visionobjects/stylus/core/InkItemUserParamsListener;)Lcom/visionobjects/stylus/core/Segment;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/Segment;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItemUserParamsListener;->a(Lcom/visionobjects/stylus/core/InkItemUserParamsListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_readSegment(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkItemUserParamsListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V

    return-object v6
.end method

.method public setVersion(J)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_setVersion(JLcom/visionobjects/stylus/core/Archive;J)V

    return-void
.end method

.method public writeInkField(Lcom/visionobjects/stylus/core/InkField;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_writeInkField(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkField;)V

    return-void
.end method

.method public writeInkItem(Lcom/visionobjects/stylus/core/InkItem;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_writeInkItem(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkItem;)V

    return-void
.end method

.method public writeInt(I)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_writeInt(JLcom/visionobjects/stylus/core/Archive;I)V

    return-void
.end method

.method public writeSegment(Lcom/visionobjects/stylus/core/Segment;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Segment;->a(Lcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_writeSegment(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/Segment;)V

    return-void
.end method
