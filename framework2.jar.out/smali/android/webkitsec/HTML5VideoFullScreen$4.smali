.class Landroid/webkitsec/HTML5VideoFullScreen$4;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/webkitsec/WebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/HTML5VideoFullScreen;


# direct methods
.method constructor <init>(Landroid/webkitsec/HTML5VideoFullScreen;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/HTML5VideoFullScreen$4;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 3

    const/4 v2, 0x0

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;
    invoke-static {}, Landroid/webkitsec/HTML5VideoFullScreen;->access$1000()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoFullScreen$4;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # invokes: Landroid/webkitsec/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;
    invoke-static {v1}, Landroid/webkitsec/HTML5VideoFullScreen;->access$900(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;
    invoke-static {}, Landroid/webkitsec/HTML5VideoFullScreen;->access$1100()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;
    invoke-static {}, Landroid/webkitsec/HTML5VideoFullScreen;->access$1000()Landroid/widget/FrameLayout;

    move-result-object v0

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;
    invoke-static {}, Landroid/webkitsec/HTML5VideoFullScreen;->access$1100()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    # setter for: Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$1102(Landroid/view/View;)Landroid/view/View;

    :cond_0
    # setter for: Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$1002(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$4;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    iget-object v0, v0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->getWebView()Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getViewManager()Landroid/webkitsec/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/ViewManager;->showAll()V

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$4;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # setter for: Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0, v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$202(Landroid/webkitsec/HTML5VideoFullScreen;Landroid/widget/MediaController;)Landroid/widget/MediaController;

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$4;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    iget-object v0, v0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkitsec/HTML5VideoViewProxy;->onStopFullScreen(Z)V

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$4;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    iput-object v2, v0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    return-void
.end method
