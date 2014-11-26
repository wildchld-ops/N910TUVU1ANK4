.class Lcom/android/launcher2/DeltaVisualizer$1;
.super Ljava/lang/Object;
.source "DeltaVisualizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeltaVisualizer;->animateDelta(Lcom/android/launcher2/PositionDelta;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeltaVisualizer;

.field final synthetic val$al:Lcom/android/launcher2/AnimationLayer;

.field final synthetic val$changed:Z

.field final synthetic val$d:Lcom/android/launcher2/PositionDelta;

.field final synthetic val$launcher:Lcom/android/launcher2/Launcher;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/AnimationLayer;Landroid/view/View;ZLcom/android/launcher2/PositionDelta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DeltaVisualizer$1;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iput-object p2, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$launcher:Lcom/android/launcher2/Launcher;

    iput-object p3, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$al:Lcom/android/launcher2/AnimationLayer;

    iput-object p4, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$v:Landroid/view/View;

    iput-boolean p5, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$changed:Z

    iput-object p6, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$d:Lcom/android/launcher2/PositionDelta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    # getter for: Lcom/android/launcher2/DeltaVisualizer;->mAnimLayerPendingRunnables:Ljava/util/List;
    invoke-static {v0}, Lcom/android/launcher2/DeltaVisualizer;->access$000(Lcom/android/launcher2/DeltaVisualizer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$launcher:Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$launcher:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isTransitioningToShowAllApps()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$launcher:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$launcher:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$al:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->findExistingAnimation(Landroid/view/View;)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v8

    iget-boolean v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$changed:Z

    if-nez v0, :cond_2

    if-nez v8, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$d:Lcom/android/launcher2/PositionDelta;

    iget-object v1, v1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    iget-object v2, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$v:Landroid/view/View;

    # invokes: Lcom/android/launcher2/DeltaVisualizer;->getBitmapForAnim(Lcom/android/launcher2/BaseItem;Landroid/view/View;)Landroid/graphics/Bitmap;
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/DeltaVisualizer;->access$200(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/BaseItem;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$al:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$d:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$d:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v2}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher2/DeltaVisualizer$1;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    # getter for: Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;
    invoke-static {v4}, Lcom/android/launcher2/DeltaVisualizer;->access$300(Lcom/android/launcher2/DeltaVisualizer;)Lcom/android/launcher2/CellLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$v:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer;->getLocationFromCellPos(IILcom/android/launcher2/CellLayout;Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v10

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    const/4 v1, 0x1

    # setter for: Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/DeltaVisualizer;->access$402(Lcom/android/launcher2/DeltaVisualizer;Z)Z

    if-eqz v8, :cond_5

    const/16 v0, 0x64

    invoke-virtual {v8, v10, v0, v11}, Lcom/android/launcher2/AnimationLayer$Anim;->update([IIZ)V

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    # invokes: Lcom/android/launcher2/DeltaVisualizer;->removeAllListeners(Lcom/android/launcher2/AnimationLayer$Anim;)V
    invoke-static {v0, v8}, Lcom/android/launcher2/DeltaVisualizer;->access$500(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;)V

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    # setter for: Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z
    invoke-static {v0, v11}, Lcom/android/launcher2/DeltaVisualizer;->access$402(Lcom/android/launcher2/DeltaVisualizer;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$v:Landroid/view/View;

    # invokes: Lcom/android/launcher2/DeltaVisualizer;->positioningListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    invoke-static {v0, v8, v1}, Lcom/android/launcher2/DeltaVisualizer;->access$600(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$v:Landroid/view/View;

    # invokes: Lcom/android/launcher2/DeltaVisualizer;->bounceOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    invoke-static {v0, v8, v1}, Lcom/android/launcher2/DeltaVisualizer;->access$700(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$changed:Z

    if-eqz v0, :cond_3

    invoke-virtual {v8, v5}, Lcom/android/launcher2/AnimationLayer$Anim;->updateBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    # getter for: Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;
    invoke-static {v0}, Lcom/android/launcher2/DeltaVisualizer;->access$100(Lcom/android/launcher2/DeltaVisualizer;)Ljava/util/IdentityHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$d:Lcom/android/launcher2/PositionDelta;

    iget-object v1, v1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    iget-object v2, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$d:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$al:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$v:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v9

    new-instance v3, Lcom/android/launcher2/DeltaVisualizer$AnimLayerPendingRunnable;

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$v:Landroid/view/View;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher2/DeltaVisualizer$AnimLayerPendingRunnable;-><init>(Lcom/android/launcher2/DeltaVisualizer;Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$al:Lcom/android/launcher2/AnimationLayer;

    iget-object v4, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$v:Landroid/view/View;

    const/4 v6, -0x1

    move v2, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v7

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$v:Landroid/view/View;

    # invokes: Lcom/android/launcher2/DeltaVisualizer;->positioningListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    invoke-static {v0, v7, v1}, Lcom/android/launcher2/DeltaVisualizer;->access$600(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$v:Landroid/view/View;

    # invokes: Lcom/android/launcher2/DeltaVisualizer;->bounceOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    invoke-static {v0, v7, v1}, Lcom/android/launcher2/DeltaVisualizer;->access$700(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    invoke-virtual {v7, v10}, Lcom/android/launcher2/AnimationLayer$Anim;->setTo([I)V

    invoke-virtual {v7, v9}, Lcom/android/launcher2/AnimationLayer$Anim;->setFrom([I)V

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer$1;->val$v:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2
.end method
