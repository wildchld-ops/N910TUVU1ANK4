.class Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$1;
.super Ljava/lang/Object;
.source "BrilliantRingRenderer.java"

# interfaces
.implements Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;ILcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;III)V
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

    iput-object p1, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$1;->this$0:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlphaChanged(F)V
    .locals 3
    .param p1    # F

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$1;->this$0:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;

    # setter for: Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->currentAlpha:F
    invoke-static {v0, p1}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->access$002(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;F)F

    # getter for: Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mJniBrilliantRing:Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;
    invoke-static {}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->access$100()Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;

    move-result-object v0

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$1;->this$0:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;

    # getter for: Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->currentAlpha:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->access$000(Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->onCustomEvent(IF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer$1;->this$0:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;

    iget-object v0, v0, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method
