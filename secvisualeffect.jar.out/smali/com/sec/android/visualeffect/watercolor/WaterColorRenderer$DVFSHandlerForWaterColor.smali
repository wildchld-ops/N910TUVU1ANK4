.class Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;
.super Landroid/os/Handler;
.source "WaterColorRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DVFSHandlerForWaterColor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # invokes: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->aquireCpuGpuMaxLock()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$700(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;->this$0:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    # invokes: Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->releaseCpuGpuMaxLock()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->access$800(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
