.class Landroid/webkitsec/WebBackForwardListClassic;
.super Landroid/webkitsec/WebBackForwardList;
.source "WebBackForwardListClassic.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkitsec/WebHistoryItemClassic;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackProxy:Landroid/webkitsec/CallbackProxy;

.field private mClearPending:Z

.field private mCurrentIndex:I


# direct methods
.method constructor <init>(Landroid/webkitsec/CallbackProxy;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkitsec/WebBackForwardList;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCurrentIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    return-void
.end method

.method private static native nativeClose(I)V
.end method

.method private declared-synchronized removeHistoryItem(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/webkitsec/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/WebHistoryItem;

    iget v1, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCurrentIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCurrentIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synchronized native declared-synchronized restoreIndex(II)V
.end method


# virtual methods
.method declared-synchronized addHistoryItem(Landroid/webkitsec/WebHistoryItem;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v4, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCurrentIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCurrentIndex:I

    iget-object v4, p0, Landroid/webkitsec/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v2, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCurrentIndex:I

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-lt v1, v2, :cond_0

    iget-object v4, p0, Landroid/webkitsec/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkitsec/WebHistoryItem;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroid/webkitsec/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    move-object v0, p1

    check-cast v0, Landroid/webkitsec/WebHistoryItemClassic;

    move-object v4, v0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v4, p1}, Landroid/webkitsec/CallbackProxy;->onNewHistoryItem(Landroid/webkitsec/WebHistoryItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public bridge synthetic clone()Landroid/webkitsec/WebBackForwardList;
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebBackForwardListClassic;->clone()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized clone()Landroid/webkitsec/WebBackForwardListClassic;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/webkitsec/WebBackForwardListClassic;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/webkitsec/WebBackForwardListClassic;-><init>(Landroid/webkitsec/CallbackProxy;)V

    iget-boolean v3, p0, Landroid/webkitsec/WebBackForwardListClassic;->mClearPending:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/webkitsec/WebBackForwardListClassic;->addHistoryItem(Landroid/webkitsec/WebHistoryItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget v3, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCurrentIndex:I

    iput v3, v1, Landroid/webkitsec/WebBackForwardListClassic;->mCurrentIndex:I

    invoke-virtual {p0}, Landroid/webkitsec/WebBackForwardListClassic;->getSize()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v1, Landroid/webkitsec/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v4, v1, Landroid/webkitsec/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/webkitsec/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkitsec/WebHistoryItemClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebHistoryItemClassic;->clone()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/webkitsec/WebBackForwardListClassic;->clone()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized close(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCurrentIndex:I

    invoke-static {p1}, Landroid/webkitsec/WebBackForwardListClassic;->nativeClose(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebBackForwardListClassic;->mClearPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getClearPending()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebBackForwardListClassic;->mClearPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentIndex()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCurrentIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getCurrentItem()Landroid/webkitsec/WebHistoryItem;
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebBackForwardListClassic;->getItemAtIndex(I)Landroid/webkitsec/WebHistoryItemClassic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getItemAtIndex(I)Landroid/webkitsec/WebHistoryItem;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/webkitsec/WebBackForwardListClassic;->getItemAtIndex(I)Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getItemAtIndex(I)Landroid/webkitsec/WebHistoryItemClassic;
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/webkitsec/WebBackForwardListClassic;->getSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/WebHistoryItemClassic;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebBackForwardListClassic;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setClearPending()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/webkitsec/WebBackForwardListClassic;->mClearPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCurrentIndex(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCurrentIndex:I

    iget-object v0, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebBackForwardListClassic;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {p0, p1}, Landroid/webkitsec/WebBackForwardListClassic;->getItemAtIndex(I)Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/CallbackProxy;->onIndexChanged(Landroid/webkitsec/WebHistoryItem;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
