.class public Lcom/sec/android/visualeffect/abstracttile/AbstractTileView;
.super Landroid/opengl/GLSurfaceView;
.source "AbstractTileView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractTile View"


# instance fields
.field private mRenderer:Lcom/sec/android/visualeffect/abstracttile/AbstractTileRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    const-string v0, "AbstractTile View"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    check-cast p1, Lcom/sec/android/visualeffect/abstracttile/AbstractTileRenderer;

    iput-object p1, p0, Lcom/sec/android/visualeffect/abstracttile/AbstractTileView;->mRenderer:Lcom/sec/android/visualeffect/abstracttile/AbstractTileRenderer;

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/abstracttile/AbstractTileView;->mRenderer:Lcom/sec/android/visualeffect/abstracttile/AbstractTileRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->destroy()V

    const-string v0, "AbstractTile View"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
