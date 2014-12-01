.class Landroid/webkitsec/HTML5VideoFullScreen$3;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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

    iput-object p1, p0, Landroid/webkitsec/HTML5VideoFullScreen$3;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$3;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    # setter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v0, v1}, Landroid/webkitsec/HTML5VideoFullScreen;->access$002(Landroid/webkitsec/HTML5VideoFullScreen;I)I

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$3;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    # setter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v0, v1}, Landroid/webkitsec/HTML5VideoFullScreen;->access$102(Landroid/webkitsec/HTML5VideoFullScreen;I)I

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$3;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v0}, Landroid/webkitsec/HTML5VideoFullScreen;->access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$3;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v0}, Landroid/webkitsec/HTML5VideoFullScreen;->access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$3;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;
    invoke-static {v0}, Landroid/webkitsec/HTML5VideoFullScreen;->access$800(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoFullScreen$3;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v1}, Landroid/webkitsec/HTML5VideoFullScreen;->access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$3;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method
