.class public Lcom/visionobjects/stylus/core/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/Log$Type;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Log__SWIG_0(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Log;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/Log;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/Log;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Log;)V
    .locals 3

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Log__SWIG_1(JLcom/visionobjects/stylus/core/Log;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Log;-><init>(JZ)V

    return-void

    :cond_0
    iget-wide v0, p1, Lcom/visionobjects/stylus/core/Log;->b:J

    goto :goto_0
.end method

.method public static disable()V
    .locals 0

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Log_disable__SWIG_1()V

    return-void
.end method

.method public static disable(I)V
    .locals 0

    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Log_disable__SWIG_0(I)V

    return-void
.end method

.method public static disableSerialization()V
    .locals 0

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Log_disableSerialization()V

    return-void
.end method

.method public static elapsed(Lcom/visionobjects/stylus/core/VoTimeStamp;)J
    .locals 2

    invoke-static {p0}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Log_elapsed(JLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static enable()V
    .locals 0

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Log_enable__SWIG_1()V

    return-void
.end method

.method public static enable(I)V
    .locals 0

    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Log_enable__SWIG_0(I)V

    return-void
.end method

.method public static enableSerialization(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Log_enableSerialization([B)V

    return-void
.end method

.method public static enableTimings(Z)V
    .locals 0

    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Log_enableTimings(Z)V

    return-void
.end method

.method public static getFilter()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Log_getFilter()I

    move-result v0

    return v0
.end method

.method public static getSerializationFilePath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Log_getSerializationFilePath()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static isTimingsEnabled()Z
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Log_isTimingsEnabled()Z

    move-result v0

    return v0
.end method

.method public static serializationEnabled()Z
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Log_serializationEnabled()Z

    move-result v0

    return v0
.end method

.method public static setTimings(Z)V
    .locals 0

    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Log_setTimings(Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Log;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/Log;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Log;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Log;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_Log(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/Log;->b:J
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

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Log;->delete()V

    return-void
.end method
