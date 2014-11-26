.class final Lcom/absolute/android/persistservice/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;

.field private b:Z

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/absolute/android/persistservice/l;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/l;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/absolute/android/persistservice/l;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/l;)I
    .locals 1

    iget v0, p0, Lcom/absolute/android/persistservice/l;->c:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/l;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/l;->b:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/absolute/android/persistservice/l;->c:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
