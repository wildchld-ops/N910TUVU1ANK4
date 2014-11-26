.class public Lcom/quramsoft/qdio/QdioRecorder;
.super Ljava/lang/Object;
.source "QdioRecorder.java"


# static fields
.field private static QURAM_RECORDER_AUDIO_ENCODING:I = 0x0

.field private static QURAM_RECORDER_BPP:I = 0x0

.field private static final QURAM_RECORDER_BUFFERSIZE:I = 0x4000

.field private static QURAM_RECORDER_CHANNELS:I

.field private static QURAM_RECORDER_SAMPLERATE:I

.field private static qRecorder:Lcom/quramsoft/qdio/QdioRecorder;


# instance fields
.field private bufferSize:I

.field private mAudioSource:I

.field private recorder:Landroid/media/AudioRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    new-instance v0, Lcom/quramsoft/qdio/QdioRecorder;

    invoke-direct {v0}, Lcom/quramsoft/qdio/QdioRecorder;-><init>()V

    sput-object v0, Lcom/quramsoft/qdio/QdioRecorder;->qRecorder:Lcom/quramsoft/qdio/QdioRecorder;

    sput v1, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_BPP:I

    const v0, 0xac44

    sput v0, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    sput v1, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    const/4 v0, 0x2

    sput v0, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v3, 0x4000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    const/4 v0, 0x1

    iput v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    iput v3, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    sget v0, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    sget v1, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    iget v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    if-ge v0, v3, :cond_0

    iput v3, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    :cond_0
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bufferSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "QURAM"

    const-string v1, "QURAM_RECORDER_BUFFERSIZE = 16384"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/quramsoft/qdio/QdioRecorder;
    .locals 1

    sget-object v0, Lcom/quramsoft/qdio/QdioRecorder;->qRecorder:Lcom/quramsoft/qdio/QdioRecorder;

    return-object v0
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    return v0
.end method

.method public init(I)Z
    .locals 7
    .param p1    # I

    const/4 v6, 0x1

    iput p1, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorder = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorder.getState() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    :goto_0
    return v0

    :cond_1
    const-string v0, "QURAM"

    const-string v1, "make new Recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    sget v3, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    sget v4, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    iget v5, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method public read([B)I
    .locals 5
    .param p1    # [B

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-nez v1, :cond_0

    monitor-exit v2

    const/4 v1, -0x3

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    iget v4, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    invoke-virtual {v1, p1, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    monitor-exit v2

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()Z
    .locals 3

    const-string v0, "QURAM"

    const-string v1, "qRecorder start start"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v1

    :try_start_0
    const-string v0, "QURAM"

    const-string v2, "stop recorder in start"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    invoke-virtual {p0, v0}, Lcom/quramsoft/qdio/QdioRecorder;->init(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    const-string v0, "QURAM"

    const-string v2, "record start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "QURAM"

    const-string v1, "qrecorder start end"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public stop()V
    .locals 2

    const-string v0, "QURAM"

    const-string v1, "qRecorder stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "QURAM"

    const-string v1, "qRecorder stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
