.class Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;
.super Ljava/lang/Object;
.source "IndigoDiffusionRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x40000000

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->drawCount:I
    invoke-static {v0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$300(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mLandscape:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$400(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->defaultX:F
    invoke-static {v1}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$500(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenWidth:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$600(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v2, v2, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v1, v1, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v2, v2, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->XRatioForLandscape:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenWidth:I
    invoke-static {v3}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$600(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I
    invoke-static {v1}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$700(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->defaultY:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$800(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$700(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v1, v1, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v2, v2, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->YRatioForLandscape:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I
    invoke-static {v3}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$700(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    :goto_0
    const-string v0, "IndigoDiffusionRenderer"

    const-string v1, "mDefaultRunnable run, and ripple()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v1, v1, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v2, v2, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v3, v3, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->intensityForRipple:F

    const/high16 v4, 0x40800000

    mul-float/2addr v3, v4

    # invokes: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->ripple(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$900(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;FFF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->defaultX:F
    invoke-static {v0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$500(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->defaultY:F
    invoke-static {v1}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$800(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v2, v2, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->pressure:F

    invoke-static {v0, v1, v5, v2}, Lcom/sec/android/visualeffect/indigodiffusion/JniIndigoDiffusionRender;->onTouch(IIIF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDefaultRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$1002(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # setter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->calledScreenTurnedOn:Z
    invoke-static {v0, v5}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$1102(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;Z)Z

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->defaultX:F
    invoke-static {v1}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$500(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenWidth:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$600(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v2, v2, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v1, v1, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v2, v2, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->XRatioForPortrait:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenWidth:I
    invoke-static {v3}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$600(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glX:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I
    invoke-static {v1}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$700(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->defaultY:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$800(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$700(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v1, v1, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget v2, v2, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->YRatioForPortrait:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mScreenHeight:I
    invoke-static {v3}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$700(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->glY:F

    goto/16 :goto_0

    :cond_1
    const-string v0, "IndigoDiffusionRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Because drawCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->drawCount:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$300(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDefaultRunnable, postDelayed()!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    iget-object v0, v0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer$2;->this$0:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;

    # getter for: Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->mDefaultRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;->access$1000(Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionRenderer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method
