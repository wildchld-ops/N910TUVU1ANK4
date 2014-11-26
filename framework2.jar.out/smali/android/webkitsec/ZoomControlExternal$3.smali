.class Landroid/webkitsec/ZoomControlExternal$3;
.super Ljava/lang/Object;
.source "ZoomControlExternal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/ZoomControlExternal;->createZoomControls()Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/ZoomControlExternal;


# direct methods
.method constructor <init>(Landroid/webkitsec/ZoomControlExternal;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/ZoomControlExternal$3;->this$0:Landroid/webkitsec/ZoomControlExternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal$3;->this$0:Landroid/webkitsec/ZoomControlExternal;

    # getter for: Landroid/webkitsec/ZoomControlExternal;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/webkitsec/ZoomControlExternal;->access$200(Landroid/webkitsec/ZoomControlExternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/ZoomControlExternal$3;->this$0:Landroid/webkitsec/ZoomControlExternal;

    # getter for: Landroid/webkitsec/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/webkitsec/ZoomControlExternal;->access$100(Landroid/webkitsec/ZoomControlExternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal$3;->this$0:Landroid/webkitsec/ZoomControlExternal;

    # getter for: Landroid/webkitsec/ZoomControlExternal;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/webkitsec/ZoomControlExternal;->access$200(Landroid/webkitsec/ZoomControlExternal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/ZoomControlExternal$3;->this$0:Landroid/webkitsec/ZoomControlExternal;

    # getter for: Landroid/webkitsec/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/webkitsec/ZoomControlExternal;->access$100(Landroid/webkitsec/ZoomControlExternal;)Ljava/lang/Runnable;

    move-result-object v1

    # getter for: Landroid/webkitsec/ZoomControlExternal;->ZOOM_CONTROLS_TIMEOUT:J
    invoke-static {}, Landroid/webkitsec/ZoomControlExternal;->access$300()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal$3;->this$0:Landroid/webkitsec/ZoomControlExternal;

    # getter for: Landroid/webkitsec/ZoomControlExternal;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ZoomControlExternal;->access$400(Landroid/webkitsec/ZoomControlExternal;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->zoomOut()Z

    return-void
.end method
