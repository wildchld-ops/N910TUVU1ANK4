.class Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$1;
.super Ljava/lang/Object;
.source "WaterColorRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cleanUp()V
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

    iput-object p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$1;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "postDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$1;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->clearWaterColor()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$1;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # getter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$000(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$1;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # getter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$100(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$1;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # getter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;
    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$200(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$1;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # getter for: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;
    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$200(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
