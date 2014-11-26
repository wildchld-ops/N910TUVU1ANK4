.class Lcom/android/server/display/MagnifierSurfaceControl$1;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"

# interfaces
.implements Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/MagnifierSurfaceControl;-><init>(Landroid/content/Context;Lcom/android/server/display/MagnifierSurfaceControl$Listener;Landroid/os/Handler;Lcom/android/server/display/MagnifierDisplayPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MagnifierSurfaceControl;


# direct methods
.method constructor <init>(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(Z)V
    .locals 8
    .param p1    # Z

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$000(Lcom/android/server/display/MagnifierSurfaceControl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$100(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # invokes: Lcom/android/server/display/MagnifierSurfaceControl;->hide()V
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$200(Lcom/android/server/display/MagnifierSurfaceControl;)V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # invokes: Lcom/android/server/display/MagnifierSurfaceControl;->destroyMainSurface()V
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$300(Lcom/android/server/display/MagnifierSurfaceControl;)V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # invokes: Lcom/android/server/display/MagnifierSurfaceControl;->createDefaultSurface()V
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$400(Lcom/android/server/display/MagnifierSurfaceControl;)V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$500(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$500(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;
    invoke-static {v3}, Lcom/android/server/display/MagnifierSurfaceControl;->access$600(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/server/display/MagnifierSurfaceControl$Listener;->onChangeSurface(Landroid/view/Surface;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$700(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$800(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;
    invoke-static {v3}, Lcom/android/server/display/MagnifierSurfaceControl;->access$700(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->getPadding()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPadding(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$800(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPrecision()V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$700(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->dismiss()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$800(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    new-instance v3, Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/display/MagnifierSurfaceControl;->access$900(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;
    invoke-static {v6}, Lcom/android/server/display/MagnifierSurfaceControl;->access$800(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/display/MagnifierDisplayPolicy;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;
    invoke-static {v7}, Lcom/android/server/display/MagnifierSurfaceControl;->access$800(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/display/MagnifierDisplayPolicy;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/server/display/MagnifierSurfaceControl$Border;-><init>(Landroid/content/Context;III)V

    # setter for: Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;
    invoke-static {v1, v3}, Lcom/android/server/display/MagnifierSurfaceControl;->access$702(Lcom/android/server/display/MagnifierSurfaceControl;Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mState:I
    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1000(Lcom/android/server/display/MagnifierSurfaceControl;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$1;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    const/4 v3, 0x3

    # setter for: Lcom/android/server/display/MagnifierSurfaceControl;->mState:I
    invoke-static {v1, v3}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1002(Lcom/android/server/display/MagnifierSurfaceControl;I)I

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
