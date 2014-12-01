.class public Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
.super Ljava/lang/Object;
.source "QdioJNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quramsoft/qdio/QdioJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QdioJPEGData"
.end annotation


# instance fields
.field private audio_count:I

.field private endOffset:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private filename:Ljava/lang/String;

.field private startOffset:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->audio_count:I

    invoke-direct {p0}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->resetQdioJpegData()V

    return-void
.end method

.method static synthetic access$0(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;)I
    .locals 1

    iget v0, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->audio_count:I

    return v0
.end method

.method static synthetic access$3(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;I)V
    .locals 0

    iput p1, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->audio_count:I

    return-void
.end method

.method static synthetic access$4(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->filename:Ljava/lang/String;

    return-void
.end method

.method private resetQdioJpegData()V
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->audio_count:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAudioListSize()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->audio_count:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getLength(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public getStartOffset(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
