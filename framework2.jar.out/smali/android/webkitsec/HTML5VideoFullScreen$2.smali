.class Landroid/webkitsec/HTML5VideoFullScreen$2;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    iput-object p1, p0, Landroid/webkitsec/HTML5VideoFullScreen$2;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$2;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z
    invoke-static {v0}, Landroid/webkitsec/HTML5VideoFullScreen;->access$300(Landroid/webkitsec/HTML5VideoFullScreen;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$2;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkitsec/HTML5VideoFullScreen;->access$200(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$2;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkitsec/HTML5VideoFullScreen;->access$200(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$2;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkitsec/HTML5VideoFullScreen;->access$200(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$2;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkitsec/HTML5VideoFullScreen;->access$200(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$2;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # setter for: Landroid/webkitsec/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Landroid/webkitsec/HTML5VideoFullScreen;->access$402(Landroid/webkitsec/HTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$2;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    const/4 v1, 0x2

    # setter for: Landroid/webkitsec/HTML5VideoFullScreen;->mFullScreenMode:I
    invoke-static {v0, v1}, Landroid/webkitsec/HTML5VideoFullScreen;->access$502(Landroid/webkitsec/HTML5VideoFullScreen;I)I

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$2;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # invokes: Landroid/webkitsec/HTML5VideoFullScreen;->prepareForFullScreen()V
    invoke-static {v0}, Landroid/webkitsec/HTML5VideoFullScreen;->access$600(Landroid/webkitsec/HTML5VideoFullScreen;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$2;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    sget-object v1, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    # setter for: Landroid/webkitsec/HTML5VideoFullScreen;->mPlayingWhenDestroyed:Z
    invoke-static {v0, v1}, Landroid/webkitsec/HTML5VideoFullScreen;->access$702(Landroid/webkitsec/HTML5VideoFullScreen;Z)Z

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$2;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoFullScreen$2;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    iget-object v1, v1, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkitsec/HTML5VideoView;->pauseAndDispatch(Landroid/webkitsec/HTML5VideoViewProxy;)V

    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$2;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # setter for: Landroid/webkitsec/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$402(Landroid/webkitsec/HTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$2;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkitsec/HTML5VideoFullScreen;->access$200(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$2;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkitsec/HTML5VideoFullScreen;->access$200(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_1
    return-void
.end method
