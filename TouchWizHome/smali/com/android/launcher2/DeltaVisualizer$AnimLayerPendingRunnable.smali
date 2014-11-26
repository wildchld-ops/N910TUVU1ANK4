.class Lcom/android/launcher2/DeltaVisualizer$AnimLayerPendingRunnable;
.super Ljava/lang/Object;
.source "DeltaVisualizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DeltaVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimLayerPendingRunnable"
.end annotation


# instance fields
.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher2/DeltaVisualizer;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/DeltaVisualizer;Landroid/view/View;)V
    .locals 1
    .param p2    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/launcher2/DeltaVisualizer$AnimLayerPendingRunnable;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$AnimLayerPendingRunnable;->mView:Ljava/lang/ref/WeakReference;

    # getter for: Lcom/android/launcher2/DeltaVisualizer;->mAnimLayerPendingRunnables:Ljava/util/List;
    invoke-static {p1}, Lcom/android/launcher2/DeltaVisualizer;->access$000(Lcom/android/launcher2/DeltaVisualizer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$AnimLayerPendingRunnable;->mView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$AnimLayerPendingRunnable;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$AnimLayerPendingRunnable;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    # getter for: Lcom/android/launcher2/DeltaVisualizer;->mAnimLayerPendingRunnables:Ljava/util/List;
    invoke-static {v1}, Lcom/android/launcher2/DeltaVisualizer;->access$000(Lcom/android/launcher2/DeltaVisualizer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$AnimLayerPendingRunnable;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    # getter for: Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;
    invoke-static {v1}, Lcom/android/launcher2/DeltaVisualizer;->access$100(Lcom/android/launcher2/DeltaVisualizer;)Ljava/util/IdentityHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method
