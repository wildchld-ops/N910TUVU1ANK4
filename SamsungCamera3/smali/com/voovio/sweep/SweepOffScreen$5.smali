.class Lcom/voovio/sweep/SweepOffScreen$5;
.super Ljava/lang/Object;
.source "SweepOffScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepOffScreen;->setGLViewport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voovio/sweep/SweepOffScreen;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepOffScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepOffScreen$5;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen$5;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v1, v1, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voovio/voo3d/view/Viewport;->getOffsetX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Lcom/voovio/voo3d/view/Viewport;->getOffsetY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method
