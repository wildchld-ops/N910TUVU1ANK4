.class Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$2;
.super Ljava/lang/Object;
.source "BrilliantCutRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    # getter for: Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawCount:I
    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->access$300(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawAffordanceCount:I
    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->access$402(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;I)I

    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultRunnable synchronized run, and showUnlockAffordance() mDrawAffordanceCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    # getter for: Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawAffordanceCount:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->access$400(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    iget-object v0, v0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDefaultRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->access$502(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->calledScreenTurnedOn:Z
    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->access$602(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;Z)Z

    invoke-static {}, Lcom/sec/android/visualeffect/brilliantcuteffect/JniBrilliantCutLib;->showAffordance()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "BrilliantCut_BrilliantCutRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Because mDrawCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    # getter for: Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDrawCount:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->access$300(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDefaultRunnable, postDelayed()!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    iget-object v0, v0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    # getter for: Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->mDefaultRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->access$500(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
