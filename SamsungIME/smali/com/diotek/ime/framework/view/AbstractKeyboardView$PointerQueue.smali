.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;
.super Ljava/lang/Object;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PointerQueue"
.end annotation


# instance fields
.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private final mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/diotek/ime/framework/view/tracker/PointerTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method

.method static synthetic access$1000(Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/diotek/ime/framework/view/tracker/PointerTracker;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelAllPointers(Z)V
    .locals 4

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/tracker/PointerTracker;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKeyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isCtrlKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKeyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isShiftKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->initPreviousKeyIndex()V

    :cond_3
    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->setAlreadyProcessed()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public cancelAllPointersExcept(Lcom/diotek/ime/framework/view/tracker/PointerTracker;)V
    .locals 3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/tracker/PointerTracker;

    if-eq v1, p1, :cond_0

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->setAlreadyProcessed()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public composeAllPointersOlderThan(Lcom/diotek/ime/framework/view/tracker/PointerTracker;J)V
    .locals 5

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/tracker/PointerTracker;

    :goto_0
    if-eq v2, p1, :cond_3

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isModifier()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/tracker/PointerTracker;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKeyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isShiftKey(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKeyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isCtrlKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLastX()I

    move-result v3

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLastY()I

    move-result v4

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->onNextKeyDownEvent(IIJ)V

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->setAlreadyComposed()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public lastIndexOf(Lcom/diotek/ime/framework/view/tracker/PointerTracker;)I
    .locals 4

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/tracker/PointerTracker;

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public releaseAllPointersExcept(Lcom/diotek/ime/framework/view/tracker/PointerTracker;J)V
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/tracker/PointerTracker;

    if-eq v1, p1, :cond_0

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLastX()I

    move-result v2

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLastY()I

    move-result v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->onUpEvent(IIJ)V

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->setAlreadyProcessed()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public releaseAllPointersOlderThan(Lcom/diotek/ime/framework/view/tracker/PointerTracker;J)V
    .locals 5

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/tracker/PointerTracker;

    :goto_0
    if-eq v2, p1, :cond_3

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isModifier()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/tracker/PointerTracker;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKeyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isShiftKey(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKeyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isCtrlKey(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKeyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isAccentKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLastX()I

    move-result v3

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLastY()I

    move-result v4

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->onUpEvent(IIJ)V

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->setAlreadyProcessed()V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public remove(Lcom/diotek/ime/framework/view/tracker/PointerTracker;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .locals 2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
