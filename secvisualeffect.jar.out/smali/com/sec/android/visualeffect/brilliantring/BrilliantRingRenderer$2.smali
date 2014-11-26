.class Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$2;
.super Ljava/lang/Object;
.source "BrilliantRingRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BrilliantRing_BrilliantRingRenderer"

    const-string v1, "postDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->clearEffect()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;

    # getter for: Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictCPUClock:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->access$200(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;

    # getter for: Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->isRestrictGPUFreq:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->access$300(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;

    # getter for: Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;
    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->access$400(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$2;->this$0:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;

    # getter for: Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mDVFSHandlerBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;
    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->access$400(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$DVFSHandlerForBrilliantRing;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
