.class public Lcom/sec/android/visualeffect/geometricmosaic/GeometricMosaicRenderer;
.super Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;
.source "GeometricMosaicRenderer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;-><init>()V

    iput-object p1, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    const-string v0, "/system/lib/libsecvesrkGeometricMosaic_vA_Effect.so"

    iput-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mLibName:Ljava/lang/String;

    const-string v0, "GeometricMosaic Renderer"

    iput-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleTouchEvent(III)V
    .locals 0

    return-void
.end method

.method public showUnlock()V
    .locals 0

    return-void
.end method

.method public showUnlockAffordance()V
    .locals 0

    return-void
.end method
