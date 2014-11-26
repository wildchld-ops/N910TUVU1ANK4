.class public Landroid/webkitsec/HTML5VideoInline;
.super Landroid/webkitsec/HTML5VideoView;
.source "HTML5VideoInline.java"


# static fields
.field protected static final LOGTAG:Ljava/lang/String; = "HTML5VideoInline"

.field private static mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private static mTextureNames:[I

.field private static mVideoLayerUsingSurfaceTexture:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/webkitsec/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    sput-object v0, Landroid/webkitsec/HTML5VideoInline;->mTextureNames:[I

    const/4 v0, -0x1

    sput v0, Landroid/webkitsec/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoView;-><init>()V

    const-string v0, "HTML5VideoInline"

    const-string v1, "HTML5VideoInline created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Landroid/webkitsec/HTML5VideoView;->init(IIZ)V

    return-void
.end method

.method public static cleanupSurfaceTexture()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/webkitsec/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v0, -0x1

    sput v0, Landroid/webkitsec/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    return-void
.end method

.method public static getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 3
    .param p0    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/webkitsec/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    if-ne p0, v0, :cond_0

    sget-object v0, Landroid/webkitsec/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkitsec/HTML5VideoInline;->mTextureNames:[I

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v1, [I

    sput-object v0, Landroid/webkitsec/HTML5VideoInline;->mTextureNames:[I

    sget-object v0, Landroid/webkitsec/HTML5VideoInline;->mTextureNames:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    new-instance v0, Landroid/graphics/SurfaceTexture;

    sget-object v1, Landroid/webkitsec/HTML5VideoInline;->mTextureNames:[I

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object v0, Landroid/webkitsec/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    sput p0, Landroid/webkitsec/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    sget-object v0, Landroid/webkitsec/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method private setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 1
    .param p1    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    sget-object v0, Landroid/webkitsec/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkitsec/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    :cond_0
    return-void
.end method

.method public static surfaceTextureDeleted()Z
    .locals 1

    sget-object v0, Landroid/webkitsec/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decideDisplayMode()V
    .locals 3

    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->getVideoLayerId()I

    move-result v2

    invoke-static {v2}, Landroid/webkitsec/HTML5VideoInline;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sget-object v2, Landroid/webkitsec/HTML5VideoInline;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    return-void
.end method

.method public deleteSurfaceTexture()V
    .locals 0

    invoke-static {}, Landroid/webkitsec/HTML5VideoInline;->cleanupSurfaceTexture()V

    return-void
.end method

.method public getTextureName()I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Landroid/webkitsec/HTML5VideoInline;->mTextureNames:[I

    if-eqz v1, :cond_0

    sget-object v1, Landroid/webkitsec/HTML5VideoInline;->mTextureNames:[I

    aget v0, v1, v0

    :cond_0
    return v0
.end method

.method public pauseAndDispatch(Landroid/webkitsec/HTML5VideoViewProxy;)V
    .locals 0
    .param p1    # Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-super {p0, p1}, Landroid/webkitsec/HTML5VideoView;->pauseAndDispatch(Landroid/webkitsec/HTML5VideoViewProxy;)V

    return-void
.end method

.method public prepareDataAndDisplayMode(Landroid/webkitsec/HTML5VideoViewProxy;)V
    .locals 3
    .param p1    # Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-super {p0, p1}, Landroid/webkitsec/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkitsec/HTML5VideoViewProxy;)V

    invoke-direct {p0, p1}, Landroid/webkitsec/HTML5VideoInline;->setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/webkitsec/HTML5VideoInline;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x2000000a

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->getPauseDuringPreparing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/webkitsec/HTML5VideoView;->start()V

    :cond_0
    return-void
.end method
