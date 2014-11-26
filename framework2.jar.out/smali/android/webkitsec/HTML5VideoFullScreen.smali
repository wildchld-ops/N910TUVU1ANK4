.class public Landroid/webkitsec/HTML5VideoFullScreen;
.super Landroid/webkitsec/HTML5VideoView;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;,
        Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;
    }
.end annotation


# static fields
.field static final FULLSCREEN_OFF:I = 0x0

.field static final FULLSCREEN_SURFACECREATED:I = 0x2

.field static final FULLSCREEN_SURFACECREATING:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoFullScreen"

.field private static final SHOW_CONTROL:I = 0x1

.field private static mLayout:Landroid/widget/FrameLayout;

.field private static mProgressView:Landroid/view/View;


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final mCallback:Landroid/webkitsec/WebChromeClient$CustomViewCallback;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCurrentBufferPercentage:I

.field private mFullScreenMode:I

.field private mHandler:Landroid/os/Handler;

.field private mIsMiniMode:Z

.field private mMediaController:Landroid/widget/MediaController;

.field private mPlayingWhenDestroyed:Z

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoHeight:I

.field private mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

.field private mVideoWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;IIZ)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I
    .param p4    # Z

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoView;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-boolean v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayingWhenDestroyed:Z

    iput-boolean v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    new-instance v0, Landroid/webkitsec/HTML5VideoFullScreen$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HTML5VideoFullScreen$1;-><init>(Landroid/webkitsec/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkitsec/HTML5VideoFullScreen$2;

    invoke-direct {v0, p0}, Landroid/webkitsec/HTML5VideoFullScreen$2;-><init>(Landroid/webkitsec/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Landroid/webkitsec/HTML5VideoFullScreen$3;

    invoke-direct {v0, p0}, Landroid/webkitsec/HTML5VideoFullScreen$3;-><init>(Landroid/webkitsec/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Landroid/webkitsec/HTML5VideoFullScreen$4;

    invoke-direct {v0, p0}, Landroid/webkitsec/HTML5VideoFullScreen$4;-><init>(Landroid/webkitsec/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCallback:Landroid/webkitsec/WebChromeClient$CustomViewCallback;

    new-instance v0, Landroid/webkitsec/HTML5VideoFullScreen$5;

    invoke-direct {v0, p0}, Landroid/webkitsec/HTML5VideoFullScreen$5;-><init>(Landroid/webkitsec/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-direct {v0, p0, p1}, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;-><init>(Landroid/webkitsec/HTML5VideoFullScreen;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    iput v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mFullScreenMode:I

    iput v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I

    iput v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I

    invoke-virtual {p0, p2, p3, p4}, Landroid/webkitsec/HTML5VideoView;->init(IIZ)V

    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I
    .locals 1
    .param p0    # Landroid/webkitsec/HTML5VideoFullScreen;

    iget v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/webkitsec/HTML5VideoFullScreen;I)I
    .locals 0
    .param p0    # Landroid/webkitsec/HTML5VideoFullScreen;
    .param p1    # I

    iput p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I
    .locals 1
    .param p0    # Landroid/webkitsec/HTML5VideoFullScreen;

    iget v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000()Landroid/widget/FrameLayout;
    .locals 1

    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0    # Landroid/widget/FrameLayout;

    sput-object p0, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$102(Landroid/webkitsec/HTML5VideoFullScreen;I)I
    .locals 0
    .param p0    # Landroid/webkitsec/HTML5VideoFullScreen;
    .param p1    # I

    iput p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100()Landroid/view/View;
    .locals 1

    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0    # Landroid/view/View;

    sput-object p0, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1202(Landroid/webkitsec/HTML5VideoFullScreen;I)I
    .locals 0
    .param p0    # Landroid/webkitsec/HTML5VideoFullScreen;
    .param p1    # I

    iput p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$200(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/widget/MediaController;
    .locals 1
    .param p0    # Landroid/webkitsec/HTML5VideoFullScreen;

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$202(Landroid/webkitsec/HTML5VideoFullScreen;Landroid/widget/MediaController;)Landroid/widget/MediaController;
    .locals 0
    .param p0    # Landroid/webkitsec/HTML5VideoFullScreen;
    .param p1    # Landroid/widget/MediaController;

    iput-object p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    return-object p1
.end method

.method static synthetic access$300(Landroid/webkitsec/HTML5VideoFullScreen;)Z
    .locals 1
    .param p0    # Landroid/webkitsec/HTML5VideoFullScreen;

    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    return v0
.end method

.method static synthetic access$402(Landroid/webkitsec/HTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0    # Landroid/webkitsec/HTML5VideoFullScreen;
    .param p1    # Landroid/view/SurfaceHolder;

    iput-object p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$502(Landroid/webkitsec/HTML5VideoFullScreen;I)I
    .locals 0
    .param p0    # Landroid/webkitsec/HTML5VideoFullScreen;
    .param p1    # I

    iput p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mFullScreenMode:I

    return p1
.end method

.method static synthetic access$600(Landroid/webkitsec/HTML5VideoFullScreen;)V
    .locals 0
    .param p0    # Landroid/webkitsec/HTML5VideoFullScreen;

    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoFullScreen;->prepareForFullScreen()V

    return-void
.end method

.method static synthetic access$702(Landroid/webkitsec/HTML5VideoFullScreen;Z)Z
    .locals 0
    .param p0    # Landroid/webkitsec/HTML5VideoFullScreen;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayingWhenDestroyed:Z

    return p1
.end method

.method static synthetic access$800(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;
    .locals 1
    .param p0    # Landroid/webkitsec/HTML5VideoFullScreen;

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    return-object v0
.end method

.method static synthetic access$900(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/view/SurfaceView;
    .locals 1
    .param p0    # Landroid/webkitsec/HTML5VideoFullScreen;

    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    return-object v0
.end method

.method private attachMediaController()V
    .locals 2

    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    return-object v0
.end method

.method private prepareForFullScreen()V
    .locals 2

    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {p0, v0}, Landroid/webkitsec/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkitsec/HTML5VideoViewProxy;)V

    :cond_0
    return-void
.end method

.method private setMediaController(Landroid/widget/MediaController;)V
    .locals 0
    .param p1    # Landroid/widget/MediaController;

    iput-object p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoFullScreen;->attachMediaController()V

    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoView;->mPlayerBuffering:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method private togglePlayPause()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {p0, v0}, Landroid/webkitsec/HTML5VideoView;->pauseAndDispatch(Landroid/webkitsec/HTML5VideoViewProxy;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->start()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanSeekForward:Z

    return v0
.end method

.method public decideDisplayMode()V
    .locals 2

    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public enterFullScreenVideoState(ILandroid/webkitsec/HTML5VideoViewProxy;Landroid/webkitsec/WebViewClassic;)V
    .locals 8
    .param p1    # I
    .param p2    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p3    # Landroid/webkitsec/WebViewClassic;

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput v4, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mFullScreenMode:I

    iput v5, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    sget-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iput-object p2, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    const-string v2, "HTML5VideoFullScreen"

    const-string v3, "enterFullScreenVideoState called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v2

    iput-boolean v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v6, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p3}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sec_container_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v4}, Landroid/view/SurfaceView;->setSecure(Z)V

    :cond_0
    sget-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCallback:Landroid/webkitsec/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v2, v3}, Landroid/webkitsec/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkitsec/WebChromeClient$CustomViewCallback;)V

    invoke-virtual {p3}, Landroid/webkitsec/WebViewClassic;->getViewManager()Landroid/webkitsec/ViewManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Landroid/webkitsec/WebViewClassic;->getViewManager()Landroid/webkitsec/ViewManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/ViewManager;->hideAll()V

    :cond_1
    invoke-virtual {v0}, Landroid/webkitsec/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v2

    sput-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    sget-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    if-eqz v2, :cond_2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_2
    sget-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public fullScreenExited()Z
    .locals 1

    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1

    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreenMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 9
    .param p1    # Landroid/media/MediaPlayer;

    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoFullScreen;->fullScreenExited()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/webkitsec/HTML5VideoView;->onPrepared(Landroid/media/MediaPlayer;)V

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v4, v4}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_2
    move v3, v5

    :goto_1
    iput-boolean v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanPause:Z

    invoke-virtual {v0, v8}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v8}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_3
    move v3, v5

    :goto_2
    iput-boolean v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanSeekBack:Z

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_4
    move v3, v5

    :goto_3
    iput-boolean v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanSeekForward:Z

    :goto_4
    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v3}, Landroid/widget/MediaController;->hide()V

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    if-nez v3, :cond_d

    new-instance v1, Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v6, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {v1, v3, v6, v4}, Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    :goto_5
    sget-object v3, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-direct {p0, v1}, Landroid/webkitsec/HTML5VideoFullScreen;->setMediaController(Landroid/widget/MediaController;)V

    sget-object v3, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v3, :cond_6

    sget-object v3, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I

    const-string v3, "HTML5VideoFullScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPrepared. duration = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iget v6, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I

    iget v7, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I

    invoke-interface {v3, v6, v7}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkitsec/HTML5VideoViewProxy;->dispatchOnRestoreState()V

    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->getStartWhenPrepared()Z

    move-result v3

    if-nez v3, :cond_7

    iget-boolean v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    if-eqz v3, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->requestAudioFocus()Z

    move-result v3

    if-eqz v3, :cond_8

    sget v3, Landroid/webkitsec/HTML5VideoFullScreen;->mCurrentState:I

    if-ne v3, v8, :cond_8

    sget-object v3, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual {p0, v4}, Landroid/webkitsec/HTML5VideoView;->setStartWhenPrepared(Z)V

    :cond_8
    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v3, v5}, Landroid/widget/MediaController;->setEnabled(Z)V

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_9
    move v3, v4

    goto/16 :goto_1

    :cond_a
    move v3, v4

    goto/16 :goto_2

    :cond_b
    move v3, v4

    goto/16 :goto_3

    :cond_c
    iput-boolean v5, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanSeekForward:Z

    iput-boolean v5, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanSeekBack:Z

    iput-boolean v5, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanPause:Z

    goto/16 :goto_4

    :cond_d
    new-instance v1, Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v6, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {v1, v3, v6, v5}, Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    goto/16 :goto_5
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoFullScreen;->togglePlayPause()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mFullScreenMode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoFullScreen;->toggleMediaControlsVisiblity()V

    goto :goto_0
.end method

.method public showControllerInFullScreen()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    :cond_0
    return-void
.end method

.method protected switchProgressView(Z)V
    .locals 2
    .param p1    # Z

    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
