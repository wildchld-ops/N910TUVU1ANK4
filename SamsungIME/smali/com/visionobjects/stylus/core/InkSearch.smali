.class public Lcom/visionobjects/stylus/core/InkSearch;
.super Ljava/lang/Object;
.source "InkSearch.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkSearch__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkSearch;-><init>(JZ)V

    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkSearch;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkSearch;->a(Lcom/visionobjects/stylus/core/InkSearch;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkSearch__SWIG_1(JLcom/visionobjects/stylus/core/InkSearch;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkSearch;-><init>(JZ)V

    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/InkSearch;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    goto :goto_0
.end method


# virtual methods
.method public buildIndex(Lcom/visionobjects/stylus/core/InkField;Ljava/nio/channels/WritableByteChannel;S)V
    .locals 8

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearch_buildIndex(JLcom/visionobjects/stylus/core/InkSearch;JLcom/visionobjects/stylus/core/InkField;Ljava/nio/channels/WritableByteChannel;S)V

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearch_cancel(JLcom/visionobjects/stylus/core/InkSearch;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InkSearch(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J
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

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkSearch;->delete()V

    return-void
.end method

.method public search(Lcom/visionobjects/stylus/core/InkField;Ljava/lang/String;Ljava/nio/channels/ReadableByteChannel;)V
    .locals 8

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v2, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearch_search(JLcom/visionobjects/stylus/core/InkSearch;JLcom/visionobjects/stylus/core/InkField;[BLjava/nio/channels/ReadableByteChannel;)V

    return-void
.end method

.method public setConfig(Lcom/visionobjects/stylus/core/InputMethodConfig;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethodConfig;->a(Lcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearch_setConfig(JLcom/visionobjects/stylus/core/InkSearch;JLcom/visionobjects/stylus/core/InputMethodConfig;)V

    return-void
.end method

.method public setListener(Lcom/visionobjects/stylus/core/InkSearchListener;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkSearchListener;->a(Lcom/visionobjects/stylus/core/InkSearchListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearch_setListener(JLcom/visionobjects/stylus/core/InkSearch;JLcom/visionobjects/stylus/core/InkSearchListener;)V

    return-void
.end method
