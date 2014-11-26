.class final Lcom/touchtype_fluency/util/c$a;
.super Lcom/touchtype_fluency/util/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/touchtype_fluency/util/c;

.field private b:Lcom/touchtype_fluency/util/ProgressListener;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/c;Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/touchtype_fluency/util/ProgressListener;-><init>()V

    iput v0, p0, Lcom/touchtype_fluency/util/c$a;->c:I

    iput v0, p0, Lcom/touchtype_fluency/util/c$a;->d:I

    iput-object p1, p0, Lcom/touchtype_fluency/util/c$a;->a:Lcom/touchtype_fluency/util/c;

    iput-object p2, p0, Lcom/touchtype_fluency/util/c$a;->b:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c$a;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/touchtype_fluency/util/c$a;->b:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/c$a;->b:Lcom/touchtype_fluency/util/ProgressListener;

    iget v1, p0, Lcom/touchtype_fluency/util/c$a;->c:I

    iget v2, p0, Lcom/touchtype_fluency/util/c$a;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/util/ProgressListener;->onProgress(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/touchtype_fluency/util/c$a;->b:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onComplete(ZZZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c$a;->a:Lcom/touchtype_fluency/util/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/c$a;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v0}, Lcom/touchtype_fluency/util/c;->f(Lcom/touchtype_fluency/util/c;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/c$a;->a:Lcom/touchtype_fluency/util/c;

    invoke-static {v0}, Lcom/touchtype_fluency/util/c;->g(Lcom/touchtype_fluency/util/c;)V

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/c$a;->b:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/touchtype_fluency/util/c$a;->b:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/util/c$a;->b:Lcom/touchtype_fluency/util/ProgressListener;

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/touchtype_fluency/util/c$a;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/touchtype_fluency/util/c$a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onProgress(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/touchtype_fluency/util/c$a;->c:I

    iput p2, p0, Lcom/touchtype_fluency/util/c$a;->d:I

    invoke-direct {p0}, Lcom/touchtype_fluency/util/c$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
