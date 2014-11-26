.class public Lcom/visionobjects/stylus/core/ItfWriter;
.super Ljava/lang/Object;
.source "ItfWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/ItfWriter$Error;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ItfWriter__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ItfWriter;-><init>(JZ)V

    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/ItfWriter;)V
    .locals 3

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_ItfWriter__SWIG_1(JLcom/visionobjects/stylus/core/ItfWriter;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/ItfWriter;-><init>(JZ)V

    return-void

    :cond_0
    iget-wide v0, p1, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    goto :goto_0
.end method

.method public static errorCodeToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_errorCodeToString(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public addStroke(Lcom/visionobjects/stylus/core/InkItem;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_addStroke(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/InkItem;)V

    return-void
.end method

.method public addStrokes(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_addStrokes(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/ListInkItem;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_ItfWriter(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J
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

.method public errorCode()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_errorCode(JLcom/visionobjects/stylus/core/ItfWriter;)I

    move-result v0

    return v0
.end method

.method public errorLine()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_errorLine(JLcom/visionobjects/stylus/core/ItfWriter;)I

    move-result v0

    return v0
.end method

.method public errorString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_errorString(JLcom/visionobjects/stylus/core/ItfWriter;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public failed()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_failed(JLcom/visionobjects/stylus/core/ItfWriter;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/ItfWriter;->delete()V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_setComment__SWIG_1(JLcom/visionobjects/stylus/core/ItfWriter;[B)V

    return-void
.end method

.method public setComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v1, p0, v2, v3}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_setComment__SWIG_0(JLcom/visionobjects/stylus/core/ItfWriter;[B[B)V

    return-void
.end method

.method public setConfig(Lcom/visionobjects/stylus/core/InputMethodConfig;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethodConfig;->a(Lcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_setConfig__SWIG_1(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/InputMethodConfig;)V

    return-void
.end method

.method public setConfig(Lcom/visionobjects/stylus/core/InputMethodConfig;Ljava/lang/String;)V
    .locals 7

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethodConfig;->a(Lcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_setConfig__SWIG_0(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V

    return-void
.end method

.method public setField(Lcom/visionobjects/stylus/core/InkField;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_setField__SWIG_1(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/InkField;)V

    return-void
.end method

.method public setField(Lcom/visionobjects/stylus/core/InkField;Ljava/lang/String;)V
    .locals 7

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_setField__SWIG_0(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/InkField;[B)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/ItfWriter;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->ItfWriter_write(JLcom/visionobjects/stylus/core/ItfWriter;[B)V

    return-void
.end method
