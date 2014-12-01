.class Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;
.super Landroid/os/Handler;
.source "RippleInkRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DVFSHandlerForRipple"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

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
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # invokes: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->aquireCpuGpuMaxLock()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$1300(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # invokes: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->releaseCpuGpuMaxLock()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$1400(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
