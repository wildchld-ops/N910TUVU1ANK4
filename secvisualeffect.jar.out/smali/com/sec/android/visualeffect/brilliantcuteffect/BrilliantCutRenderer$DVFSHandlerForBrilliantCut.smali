.class Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;
.super Landroid/os/Handler;
.source "BrilliantCutRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DVFSHandlerForBrilliantCut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;->this$0:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;->this$0:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    # invokes: Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->aquireCpuGpuMaxLock()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->access$700(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer$DVFSHandlerForBrilliantCut;->this$0:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;

    # invokes: Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->releaseCpuGpuMaxLock()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;->access$800(Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutRenderer;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
