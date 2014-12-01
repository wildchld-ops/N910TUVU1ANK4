.class Landroid/webkitsec/HTML5VideoViewProxy;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;,
        Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;
    }
.end annotation


# static fields
.field private static final BUFFERING_END:I = 0x6a

.field private static final BUFFERING_START:I = 0x69

.field private static final ENDED:I = 0xc9

.field private static final ENTER_FULLSCREEN:I = 0x6b

.field private static final ERROR:I = 0x67

.field private static final LOAD_DEFAULT_POSTER:I = 0x68

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoViewProxy"

.field private static final PAUSE:I = 0x66

.field private static final PAUSED:I = 0xcb

.field private static final PLAY:I = 0x64

.field private static final POSTER_FETCHED:I = 0xca

.field private static final PREPARED:I = 0xc8

.field private static final RESTORESTATE:I = 0xcd

.field private static final SEEK:I = 0x65

.field private static final SET_VOLUME:I = 0x6c

.field private static final STOPFULLSCREEN:I = 0xcc

.field private static final TIMEUPDATE:I = 0x12c


# instance fields
.field private mDuration:I

.field mNativePointer:I

.field private mPoster:Landroid/graphics/Bitmap;

.field private mPosterDownloader:Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

.field private mSeekPosition:I

.field private mWebCoreHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkitsec/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkitsec/WebViewClassic;I)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mDuration:I

    iput-object p1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p0}, Landroid/webkitsec/WebViewClassic;->setHTML5VideoViewProxy(Landroid/webkitsec/HTML5VideoViewProxy;)V

    iput p2, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mNativePointer:I

    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoViewProxy;->createWebCoreHandler()V

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Landroid/webkitsec/HTML5VideoViewProxy;I)I
    .locals 0

    iput p1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mSeekPosition:I

    return p1
.end method

.method static synthetic access$1100(Landroid/webkitsec/HTML5VideoViewProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeOnEnded(I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkitsec/HTML5VideoViewProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeOnPaused(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkitsec/HTML5VideoViewProxy;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkitsec/HTML5VideoViewProxy;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V

    return-void
.end method

.method static synthetic access$1500(Landroid/webkitsec/HTML5VideoViewProxy;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeOnStopFullscreen(II)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkitsec/HTML5VideoViewProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeOnRestoreState(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkitsec/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$802(Landroid/webkitsec/HTML5VideoViewProxy;I)I
    .locals 0

    iput p1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mDuration:I

    return p1
.end method

.method static synthetic access$900(Landroid/webkitsec/HTML5VideoViewProxy;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V

    return-void
.end method

.method private createWebCoreHandler()V
    .locals 1

    new-instance v0, Landroid/webkitsec/HTML5VideoViewProxy$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HTML5VideoViewProxy$1;-><init>(Landroid/webkitsec/HTML5VideoViewProxy;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    return-void
.end method

.method private doSetPoster(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mPoster:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/webkitsec/WebViewCore;I)Landroid/webkitsec/HTML5VideoViewProxy;
    .locals 2

    new-instance v0, Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getWebViewClassic()Landroid/webkitsec/WebViewClassic;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/webkitsec/HTML5VideoViewProxy;-><init>(Landroid/webkitsec/WebViewClassic;I)V

    return-object v0
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPaused(I)V
.end method

.method private native nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnRestoreState(I)V
.end method

.method private native nativeOnStopFullscreen(II)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private static native nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
.end method

.method private sendTimeupdate()V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public dispatchOnEnded()V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchOnPaused()V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchOnRestoreState()V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcd

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchOnStopFullScreen(Z)V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enterFullScreenVideo(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-static {p1, p2, p0, v0}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkitsec/HTML5VideoViewProxy;Landroid/webkitsec/WebViewClassic;)V

    return-void
.end method

.method public enterFullscreenForVideoLayer(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public exitFullScreenVideo()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-static {p0, v0}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->exitFullScreenVideo(Landroid/webkitsec/HTML5VideoViewProxy;Landroid/webkitsec/WebViewClassic;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getWebView()Landroid/webkitsec/WebViewClassic;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v10, 0x1

    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v8, "HTML5VideoViewProxy"

    const-string v9, "handleMessage - PLAY"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v8, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    iget v8, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v5, v8, p0, v0, v6}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->play(Ljava/lang/String;ILandroid/webkitsec/HTML5VideoViewProxy;Landroid/webkitsec/WebChromeClient;I)V

    goto :goto_0

    :sswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v8, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    iget-object v8, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-static {v6, v5, p0, v8}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkitsec/HTML5VideoViewProxy;Landroid/webkitsec/WebViewClassic;)V

    goto :goto_0

    :sswitch_2
    const-string v8, "HTML5VideoViewProxy"

    const-string v9, "handleMessage - SEEK"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mSeekPosition:I

    iget v8, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v8, p0}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->seek(ILandroid/webkitsec/HTML5VideoViewProxy;)V

    goto :goto_0

    :sswitch_3
    const-string v8, "HTML5VideoViewProxy"

    const-string v9, "handleMessage - PAUSE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->pause(Landroid/webkitsec/HTML5VideoViewProxy;)V

    goto :goto_0

    :sswitch_4
    const-string v8, "HTML5VideoViewProxy"

    const-string v9, "handleMessage - ENDED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v10, :cond_1

    # setter for: Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z
    invoke-static {v10}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->access$102(Z)Z

    :cond_1
    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->end()V

    iget-object v8, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkitsec/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/WebChromeClient;->onHideCustomView()V

    goto/16 :goto_0

    :sswitch_5
    const-string v8, "HTML5VideoViewProxy"

    const-string v9, "handleMessage - ERROR"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/WebChromeClient;->onHideCustomView()V

    goto/16 :goto_0

    :sswitch_6
    iget-object v8, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/webkitsec/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :sswitch_7
    invoke-static {p0}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->isPlaying(Landroid/webkitsec/HTML5VideoViewProxy;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoViewProxy;->sendTimeupdate()V

    goto/16 :goto_0

    :sswitch_8
    const-string v8, "HTML5VideoViewProxy"

    const-string v9, "handleMessage - BUFFERING_START"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # invokes: Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v10}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->access$200(Z)V

    goto/16 :goto_0

    :sswitch_9
    const-string v8, "HTML5VideoViewProxy"

    const-string v9, "handleMessage - BUFFERING_END"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v8, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mDuration:I

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v9, 0xc8

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v8, "dur"

    new-instance v9, Ljava/lang/Integer;

    # getter for: Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;
    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->access$300()Landroid/webkitsec/HTML5VideoView;

    sget-object v10, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "width"

    new-instance v9, Ljava/lang/Integer;

    # getter for: Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;
    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->access$300()Landroid/webkitsec/HTML5VideoView;

    sget-object v10, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "height"

    new-instance v9, Ljava/lang/Integer;

    # getter for: Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;
    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->access$300()Landroid/webkitsec/HTML5VideoView;

    sget-object v10, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v8, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/4 v8, 0x0

    # invokes: Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v8}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->access$200(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_a
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v7}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->setVolume(F)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_8
        0x6a -> :sswitch_9
        0x6b -> :sswitch_1
        0x6c -> :sswitch_a
        0xc9 -> :sswitch_4
        0x12c -> :sswitch_7
    .end sparse-switch
.end method

.method public isFullScreenMode()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->getVideoView()Landroid/webkitsec/HTML5VideoView;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoView;->isFullScreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoView;->fullScreenExited()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadPoster(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    :cond_1
    new-instance v1, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    invoke-direct {v1, p1, p0}, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;-><init>(Ljava/lang/String;Landroid/webkitsec/HTML5VideoViewProxy;)V

    iput-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->start()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const/16 v0, 0xc9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    const/16 v0, 0x69

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->onPrepared()V

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStopFullScreen(Z)V
    .locals 0

    invoke-static {p1}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->onStopFullScreen(Z)V

    return-void
.end method

.method public onTimeupdate()V
    .locals 1

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public pause()V
    .locals 2

    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public pauseAndDispatch()V
    .locals 0

    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->pauseAndDispatch()V

    return-void
.end method

.method public play(Ljava/lang/String;II)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-lez p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/webkitsec/HTML5VideoViewProxy;->seek(I)V

    :cond_1
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public seek(I)V
    .locals 2

    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setBaseLayer(I)V
    .locals 0

    invoke-static {p1}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    return-void
.end method

.method public setVolume(F)V
    .locals 2

    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public teardown()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mNativePointer:I

    return-void
.end method
