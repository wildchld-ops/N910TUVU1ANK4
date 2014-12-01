.class public Lcom/android/mms/model/Model;
.super Ljava/lang/Object;
.source "Model.java"


# instance fields
.field protected mModelChangedObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/IModelChangedObserver;",
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

    iput-object v0, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected notifyModelChanged(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    invoke-interface {v1, p0, p1}, Lcom/android/mms/model/IModelChangedObserver;->onModelChanged(Lcom/android/mms/model/Model;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/mms/model/Model;->registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V

    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 0

    return-void
.end method

.method public unregisterAllModelChangedObservers()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObserversInDescendants()V

    iget-object v0, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 0

    return-void
.end method

.method public unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/mms/model/Model;->unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V

    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 0

    return-void
.end method
