.class public Lcom/sec/android/visualeffect/abstracttile/AbstractTileRenderer;
.super Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;
.source "AbstractTileRenderer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/opengl/GLSurfaceView;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;-><init>()V

    iput-object p1, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    const-string v0, "/system/lib/libsecvesrkAbstractTile_vA_Effect.so"

    iput-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mLibName:Ljava/lang/String;

    const-string v0, "AbstractTile Renderer"

    iput-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleTouchEvent(III)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->handleTouchEvent(III)V

    return-void
.end method

.method public showUnlock()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->showUnlock()V

    return-void
.end method

.method public showUnlockAffordance()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->showUnlockAffordance()V

    return-void
.end method
