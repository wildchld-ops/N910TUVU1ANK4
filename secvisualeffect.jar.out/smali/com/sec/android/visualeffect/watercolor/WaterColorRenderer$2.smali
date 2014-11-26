.class Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;
.super Ljava/lang/Object;
.source "WaterColorRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # getter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I
    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$300(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)I

    move-result v0

    if-le v0, v2, :cond_2

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "mDefaultRunnable run, and toucn down()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;
    invoke-static {}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$400()Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    iget-object v4, v3, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    iget-object v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    iget-object v5, v3, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    iget-object v0, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$502(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # setter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->calledScreenTurnedOn:Z
    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$602(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;Z)Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # getter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$000(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # getter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$100(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # getter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;
    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$200(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # getter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;
    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$200(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Because mDrawCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # getter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDrawCount:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$300(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDefaultRunnable, postDelayed()!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    iget-object v0, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$2;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # getter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$500(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
