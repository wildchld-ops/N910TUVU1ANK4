.class public Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/Thread;

.field private c:Lcom/touchtype/samsung/supportlibrary/heatmap/a;

.field private d:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    iput p3, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->e:I

    iput p4, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->f:I

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->e:I

    int-to-float v0, v0

    iget v1, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->f:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1, p5}, Lcom/touchtype/samsung/supportlibrary/heatmap/b;->a(Ljava/io/File;FFLjava/lang/String;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->c:Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->c:Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->getWidth()F

    move-result v0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->c:Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->getHeight()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid keypress model file."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Keypress model source size : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->c:Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->getWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->c:Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->getHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b()V

    return-void
.end method

.method static synthetic a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;F)I
    .locals 2

    const/high16 v1, 0x3f800000

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_1
    const/high16 v0, 0x437f0000

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    goto :goto_0
.end method

.method static synthetic a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic b(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->e:I

    return v0
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;

    invoke-direct {v1, p0}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;-><init>(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->f:I

    return v0
.end method

.method static synthetic d(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->c:Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancelBuild()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a:Ljava/lang/String;

    const-string v1, "Canceling building the HeatMap"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
