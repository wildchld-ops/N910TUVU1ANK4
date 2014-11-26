.class public final Lcom/voovio/sweep/SweepOffScreen;
.super Ljava/lang/Object;
.source "SweepOffScreen.java"

# interfaces
.implements Lcom/voovio/sweep/GLOffScreen$Renderer;


# static fields
.field public static final CONFIG_ARGB_8888:I = 0x1

.field public static final CONFIG_RGB_565:I = 0x0

.field static final TAG:Ljava/lang/String; = "SweepOffScreen"


# instance fields
.field private GRADIENT_SIZE:I

.field private m_aAuxMatrix:[F

.field m_aEdges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Edge;",
            ">;"
        }
    .end annotation
.end field

.field m_aNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Node;",
            ">;"
        }
    .end annotation
.end field

.field private m_bResourceManagerInherited:Z

.field private m_fAutodriveVelocityForward:F

.field private m_fAutodriveVelocitySideward:F

.field m_fCurEdgeFactor:F

.field private m_iFactorLoc:I

.field private m_iMatrixLoc:I

.field private m_iOverlappingLoc:I

.field private m_iPositionLoc:I

.field private m_iProgId:I

.field private m_iRotationsLoc:I

.field private m_iSlicesLoc:I

.field private m_iTexLoc:I

.field private m_iTurnDirectionLoc:I

.field private m_iUVCoordsLoc:I

.field private m_iVertexLoc:I

.field private m_nConfig:I

.field m_nCurEdgeIndex:I

.field private m_nFramePeriod_ms:I

.field private m_nHeight:I

.field private m_nLastFrame:I

.field private m_nWidth:I

.field m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

.field m_oCurEdge:Lcom/voovio/sweep/Edge;

.field m_oCurVoovio:Lcom/voovio/sweep/Voovio;

.field private m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

.field private m_oHandler:Landroid/os/Handler;

.field private m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

.field private m_oRMLIntervalRunnable:Ljava/lang/Runnable;

.field private m_oRMLTaskRunnable:Ljava/lang/Runnable;

.field private m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

.field m_oSweep:Lcom/voovio/sweep/Sweep;

.field private m_strFShader:Ljava/lang/String;

.field private m_strVShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILcom/voovio/sweep/ImageProvider;)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Lcom/voovio/sweep/ImageProvider;

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nConfig:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iput-boolean v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_bResourceManagerInherited:Z

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocityForward:F

    const/high16 v0, 0x41700000

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocitySideward:F

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_aAuxMatrix:[F

    const/16 v0, 0x32

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nFramePeriod_ms:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->GRADIENT_SIZE:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "const int gradientSize = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->GRADIENT_SIZE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "const float fFactor1 = 0.5;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "const float fFactor2 = 0.5;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "attribute float a_position;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "attribute vec4 a_vertex;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "attribute vec2 a_uvcoords;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform int u_slices;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform int u_overlapping;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform int u_rotations;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform float u_factor;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform float u_turnDirection;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform mat4 u_MVPMatrix;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform float u_alphaGradient["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->GRADIENT_SIZE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "varying float v_alpha;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "varying vec2 v_uvcoords;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "float getAlpha(int pos)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "int p1, p2;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "float fAlpha1, fAlpha2;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "float fAlpha = u_factor;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if ( u_turnDirection != 0.0 ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if ( u_turnDirection == 1.0 ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p1 = u_slices+1 - u_overlapping;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p2 = u_slices+1;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if ( u_factor <= fFactor1 ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha1 = 1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha2 = 1.0 - u_factor / fFactor1;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}else if ( u_factor > fFactor1 && u_factor <= fFactor2 ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha1 = 1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha2 = 0.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha1 = 1.0 - (u_factor-fFactor2) / (1.0-fFactor2);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha2 = 0.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p1 = 0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p2 = u_overlapping;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if ( u_factor <= fFactor1 ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha1 = 1.0 - u_factor / fFactor1;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha2 = 1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} else if ( u_factor > fFactor1 && u_factor <= fFactor2 ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha1 = 0.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha2 = 1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha1 = 0.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha2 = 1.0 - (u_factor-fFactor2) / (1.0-fFactor2);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha  = (pos < p1 || pos > p2) ? 1.0 : fAlpha1 + (fAlpha2-fAlpha1) * float(pos-p1) / float(p2-p1);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "int r = u_slices - gradientSize;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if ( pos < gradientSize && (u_rotations == 1 || u_rotations == 3) )\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha *= u_alphaGradient[pos];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "else if ( pos > r && (u_rotations == 2 || u_rotations == 3) )\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha *= u_alphaGradient[u_slices-pos];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "return fAlpha;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "void main()\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gl_Position = u_MVPMatrix * a_vertex;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gl_Position.y *= -1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "v_alpha = getAlpha(int(a_position));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "v_uvcoords = a_uvcoords;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_strVShader:Ljava/lang/String;

    const-string v0, "precision mediump float;\nvarying vec2 v_uvcoords;\nvarying float v_alpha;\nuniform sampler2D u_texId;\nvoid main()\n{\ngl_FragColor = texture2D(u_texId, v_uvcoords);\ngl_FragColor.a = v_alpha;\n}\n"

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_strFShader:Ljava/lang/String;

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iPositionLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iVertexLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iUVCoordsLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iTexLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iMatrixLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iFactorLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iSlicesLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iOverlappingLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iRotationsLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iTurnDirectionLoc:I

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_aEdges:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    const/4 v0, -0x1

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nCurEdgeIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    iput-boolean v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_bResourceManagerInherited:Z

    new-instance v0, Lcom/voovio/sweep/ResourceManager;

    invoke-direct {v0, p5}, Lcom/voovio/sweep/ResourceManager;-><init>(Lcom/voovio/sweep/ImageProvider;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/voovio/sweep/SweepOffScreen;->init(IIII)V

    return-void
.end method

.method public constructor <init>(IIIILcom/voovio/sweep/ResourceManager;)V
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Lcom/voovio/sweep/ResourceManager;

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nConfig:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iput-boolean v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_bResourceManagerInherited:Z

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocityForward:F

    const/high16 v0, 0x41700000

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocitySideward:F

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_aAuxMatrix:[F

    const/16 v0, 0x32

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nFramePeriod_ms:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->GRADIENT_SIZE:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "const int gradientSize = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->GRADIENT_SIZE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "const float fFactor1 = 0.5;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "const float fFactor2 = 0.5;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "attribute float a_position;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "attribute vec4 a_vertex;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "attribute vec2 a_uvcoords;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform int u_slices;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform int u_overlapping;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform int u_rotations;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform float u_factor;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform float u_turnDirection;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform mat4 u_MVPMatrix;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform float u_alphaGradient["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->GRADIENT_SIZE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "varying float v_alpha;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "varying vec2 v_uvcoords;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "float getAlpha(int pos)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "int p1, p2;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "float fAlpha1, fAlpha2;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "float fAlpha = u_factor;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if ( u_turnDirection != 0.0 ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if ( u_turnDirection == 1.0 ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p1 = u_slices+1 - u_overlapping;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p2 = u_slices+1;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if ( u_factor <= fFactor1 ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha1 = 1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha2 = 1.0 - u_factor / fFactor1;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}else if ( u_factor > fFactor1 && u_factor <= fFactor2 ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha1 = 1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha2 = 0.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha1 = 1.0 - (u_factor-fFactor2) / (1.0-fFactor2);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha2 = 0.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p1 = 0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p2 = u_overlapping;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if ( u_factor <= fFactor1 ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha1 = 1.0 - u_factor / fFactor1;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha2 = 1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} else if ( u_factor > fFactor1 && u_factor <= fFactor2 ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha1 = 0.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha2 = 1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha1 = 0.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha2 = 1.0 - (u_factor-fFactor2) / (1.0-fFactor2);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha  = (pos < p1 || pos > p2) ? 1.0 : fAlpha1 + (fAlpha2-fAlpha1) * float(pos-p1) / float(p2-p1);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "int r = u_slices - gradientSize;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if ( pos < gradientSize && (u_rotations == 1 || u_rotations == 3) )\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha *= u_alphaGradient[pos];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "else if ( pos > r && (u_rotations == 2 || u_rotations == 3) )\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha *= u_alphaGradient[u_slices-pos];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "return fAlpha;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "void main()\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gl_Position = u_MVPMatrix * a_vertex;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gl_Position.y *= -1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "v_alpha = getAlpha(int(a_position));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "v_uvcoords = a_uvcoords;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_strVShader:Ljava/lang/String;

    const-string v0, "precision mediump float;\nvarying vec2 v_uvcoords;\nvarying float v_alpha;\nuniform sampler2D u_texId;\nvoid main()\n{\ngl_FragColor = texture2D(u_texId, v_uvcoords);\ngl_FragColor.a = v_alpha;\n}\n"

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_strFShader:Ljava/lang/String;

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iPositionLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iVertexLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iUVCoordsLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iTexLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iMatrixLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iFactorLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iSlicesLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iOverlappingLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iRotationsLoc:I

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iTurnDirectionLoc:I

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_aEdges:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    const/4 v0, -0x1

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nCurEdgeIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    iput-boolean v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_bResourceManagerInherited:Z

    iput-object p5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/voovio/sweep/SweepOffScreen;->init(IIII)V

    return-void
.end method

.method static synthetic access$0(Lcom/voovio/sweep/SweepOffScreen;)Lcom/voovio/sweep/ResourceManager;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/voovio/sweep/SweepOffScreen;)Lcom/voovio/sweep/GLOffScreen;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    return-object v0
.end method

.method static synthetic access$2(Lcom/voovio/sweep/SweepOffScreen;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/voovio/sweep/SweepOffScreen;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/voovio/sweep/SweepOffScreen;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/voovio/sweep/SweepOffScreen;)I
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nFramePeriod_ms:I

    return v0
.end method

.method private computePath()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v19

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000

    div-float v8, v22, v23

    const/high16 v22, 0x3f000000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const/high16 v24, 0x3f000000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    const v25, 0x3c8efa35

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->tan(D)D

    move-result-wide v24

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v5, v0

    div-float v22, v8, v5

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->atan(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v6, v0

    new-instance v18, Lcom/voovio/voo3d/data/Vector3;

    const/16 v22, 0x0

    const/16 v23, 0x0

    neg-float v0, v8

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    new-instance v20, Lcom/voovio/voo3d/data/Vector3;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v10, v0, :cond_8

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v10, :cond_0

    :goto_1
    invoke-static/range {v19 .. v19}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static/range {v21 .. v21}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v15, v22, v23

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v12, v22, v23

    if-eqz v12, :cond_7

    iget-object v0, v12, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v17, v22, v23

    invoke-virtual {v12}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v22

    if-eqz v22, :cond_5

    if-eqz v15, :cond_2

    iget-object v0, v15, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    :goto_2
    invoke-virtual {v12}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v22

    div-float v7, v4, v22

    new-instance v13, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v22, 0x0

    cmpg-float v22, v7, v22

    if-gez v22, :cond_3

    move-object/from16 v22, v18

    :goto_3
    invoke-virtual/range {v21 .. v22}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual/range {v21 .. v21}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    mul-float v22, v7, v6

    invoke-virtual/range {v21 .. v22}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    new-instance v14, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/voovio/sweep/Edge;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-direct {v11, v13, v14, v0}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v12, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    const/16 v22, 0x0

    cmpg-float v22, v7, v22

    if-gez v22, :cond_4

    move-object/from16 v22, v20

    :goto_4
    invoke-virtual/range {v21 .. v22}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual/range {v21 .. v21}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    neg-float v0, v7

    move/from16 v22, v0

    mul-float v22, v22, v6

    invoke-virtual/range {v21 .. v22}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    iget-object v0, v12, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v0, v12, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    new-instance v14, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/voovio/sweep/Edge;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-direct {v11, v13, v14, v0}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    iput-object v12, v11, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v12, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v0, v12, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    new-instance v13, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/voovio/sweep/Edge;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-direct {v11, v13, v14, v0}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v0, v12, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_2

    :cond_3
    move-object/from16 v22, v20

    goto/16 :goto_3

    :cond_4
    move-object/from16 v22, v18

    goto/16 :goto_4

    :cond_5
    if-eqz v15, :cond_6

    iget-object v0, v15, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    :goto_6
    new-instance v13, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/voovio/sweep/Node;

    iget-object v0, v12, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/voovio/sweep/Edge;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-direct {v11, v13, v14, v0}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/voovio/sweep/Node;

    iget-object v0, v12, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/voovio/sweep/Node;

    iget-object v0, v12, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/voovio/sweep/Edge;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-direct {v11, v13, v14, v0}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    iput-object v12, v11, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_6
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v15}, Lcom/voovio/sweep/Transition;->isTranslation()Z

    move-result v22

    if-eqz v22, :cond_1

    iget-object v0, v15, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    new-instance v13, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v22, v0

    const/high16 v23, 0x43160000

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    new-instance v14, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/voovio/sweep/Edge;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-direct {v11, v13, v14, v0}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    new-instance v13, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v22, v0

    const/high16 v23, 0x43960000

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    new-instance v14, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/voovio/sweep/Edge;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-direct {v11, v13, v14, v0}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepOffScreen;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private fillRenderMatrices()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    invoke-static {v2}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v0, v3, v5

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v4, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    invoke-virtual {v3, v4}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v3, v6

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v4, v1, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    invoke-virtual {v3, v4}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    :cond_1
    return-void
.end method

.method private setCurrentEdge(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Edge;

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iput p1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nCurEdgeIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v1, v1, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v1, v1, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v0, v0, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v0, v0, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepOffScreen;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    :cond_0
    return-void
.end method

.method private setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 2
    .param p1    # Lcom/voovio/sweep/Voovio;

    iput-object p1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->fillRenderMatrices()V

    return-void
.end method

.method private setGLViewport()V
    .locals 2

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    new-instance v1, Lcom/voovio/sweep/SweepOffScreen$5;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/SweepOffScreen$5;-><init>(Lcom/voovio/sweep/SweepOffScreen;)V

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private start()V
    .locals 2

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateCameraViewport()V

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0}, Lcom/voovio/sweep/ResourceManager;->clearQueue()V

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    new-instance v1, Lcom/voovio/sweep/SweepOffScreen$4;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/SweepOffScreen$4;-><init>(Lcom/voovio/sweep/SweepOffScreen;)V

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepOffScreen;->setCurrentEdge(I)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateCameraValues()V

    goto :goto_0
.end method

.method private updateCameraValues()V
    .locals 8

    const/4 v6, 0x0

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v3, v3, Lcom/voovio/sweep/Node;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget v3, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v5, v5, Lcom/voovio/sweep/Edge;->m_vV01:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v3, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v5, v5, Lcom/voovio/sweep/Edge;->m_vV01:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v3, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v5, v5, Lcom/voovio/sweep/Edge;->m_vV01:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v3, v3, Lcom/voovio/sweep/Node;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v3, v3, Lcom/voovio/sweep/Edge;->m_fAngle01X:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v3, v3, Lcom/voovio/sweep/Edge;->m_fAngle01X:F

    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v4, v4, Lcom/voovio/sweep/Edge;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v3, v3, Lcom/voovio/sweep/Edge;->m_fAngle01Y:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v3, v3, Lcom/voovio/sweep/Edge;->m_fAngle01Y:F

    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    :cond_1
    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_fFOV:F

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v4, v4, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v4, v4, Lcom/voovio/sweep/Node;->m_fFOV:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_fFOV:F

    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v5, v5, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v5, v5, Lcom/voovio/sweep/Node;->m_fFOV:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v6, v6, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v6, v6, Lcom/voovio/sweep/Node;->m_fFOV:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v3, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    :cond_2
    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v4, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v5, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v6, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v4, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v5, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v6, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    invoke-static {v1}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static {v2}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    return-void
.end method

.method private updateCameraViewport()V
    .locals 11

    const/4 v6, 0x0

    const-wide/high16 v9, 0x4000000000000000L

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/voovio/voo3d/view/Viewport;->setOffsetX(F)V

    invoke-virtual {v3, v6}, Lcom/voovio/voo3d/view/Viewport;->setOffsetY(F)V

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    invoke-virtual {v3, v5}, Lcom/voovio/voo3d/view/Viewport;->setWidth(I)V

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    invoke-virtual {v3, v5}, Lcom/voovio/voo3d/view/Viewport;->setHeight(I)V

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v5, v5, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Voovio;

    iget v5, v4, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    int-to-float v5, v5

    iget v6, v4, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    int-to-float v6, v6

    div-float v1, v5, v6

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    int-to-float v6, v6

    div-float v0, v5, v6

    cmpl-float v5, v0, v1

    if-lez v5, :cond_0

    iget v5, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const v6, 0x3c8efa35

    mul-float/2addr v5, v6

    float-to-double v5, v5

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    float-to-double v7, v1

    mul-double/2addr v5, v7

    float-to-double v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    mul-double/2addr v5, v9

    const-wide v7, 0x404ca5dc00000000L

    mul-double/2addr v5, v7

    double-to-float v5, v5

    const v6, 0x3dcccccd

    sub-float v2, v5, v6

    :goto_0
    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v5, v2}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v5, v6}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->setGLViewport()V

    return-void

    :cond_0
    iget v2, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    goto :goto_0
.end method

.method private updateScene()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000

    iget v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nFramePeriod_ms:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000

    div-float v0, v3, v4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v3, v3, Lcom/voovio/sweep/Edge;->m_nType:I

    if-nez v3, :cond_4

    iget v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocityForward:F

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v4, v4, Lcom/voovio/sweep/Edge;->m_fValue:F

    div-float v1, v3, v4

    :cond_0
    :goto_0
    cmpl-float v3, v1, v6

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    iget v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nCurEdgeIndex:I

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_1

    iput v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    iget v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    :cond_1
    iget v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    iget v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nCurEdgeIndex:I

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_5

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_aEdges:Ljava/util/ArrayList;

    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nCurEdgeIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Edge;

    move-object v2, v3

    :goto_1
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_nType:I

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v4, v4, Lcom/voovio/sweep/Edge;->m_nType:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    sub-float/2addr v3, v5

    iput v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    :goto_2
    iget v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nCurEdgeIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nCurEdgeIndex:I

    invoke-direct {p0, v3}, Lcom/voovio/sweep/SweepOffScreen;->setCurrentEdge(I)V

    :cond_2
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateCameraValues()V

    :cond_3
    return-void

    :cond_4
    iget v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocitySideward:F

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v4, v4, Lcom/voovio/sweep/Edge;->m_fValue:F

    div-float v1, v3, v4

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    iput v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    goto :goto_2
.end method

.method private waitForTransitionReady()I
    .locals 5

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v3, :cond_2

    const/16 v2, 0x32

    const/16 v1, 0x3e8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v3, v3, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget v3, v3, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget-object v3, v3, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget v3, v3, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    if-eqz v3, :cond_1

    :cond_0
    if-lt v0, v1, :cond_2

    const/4 v3, -0x1

    :goto_1
    return v3

    :cond_1
    int-to-long v3, v2

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    :cond_0
    invoke-virtual {p0, v2}, Lcom/voovio/sweep/SweepOffScreen;->setSweep(Lcom/voovio/sweep/Sweep;)V

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_bResourceManagerInherited:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0}, Lcom/voovio/sweep/ResourceManager;->dispose()V

    :cond_1
    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/GLOffScreen;->dispose()V

    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    :cond_2
    return-void
.end method

.method public drawGeometry()V
    .locals 6

    const/4 v1, 0x1

    const/16 v2, 0x1406

    const/16 v4, 0x18

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iPositionLoc:I

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v5, v5, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v5, v5, Lcom/voovio/sweep/VoovioGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iPositionLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iVertexLoc:I

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v5, v5, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v5, v5, Lcom/voovio/sweep/VoovioGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iVertexLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iUVCoordsLoc:I

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v5, v5, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v5, v5, Lcom/voovio/sweep/VoovioGeometry;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iUVCoordsLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v1, v1, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget v1, v1, Lcom/voovio/sweep/VoovioGeometry;->m_nIndices:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v3, v3, Lcom/voovio/sweep/VoovioGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public drawVoovio(Lcom/voovio/sweep/Voovio;F)V
    .locals 6
    .param p1    # Lcom/voovio/sweep/Voovio;
    .param p2    # F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/voovio/sweep/SweepOffScreen;->drawVoovio(Lcom/voovio/sweep/Voovio;F[FILcom/voovio/sweep/Transition;)V

    return-void
.end method

.method public drawVoovio(Lcom/voovio/sweep/Voovio;F[FILcom/voovio/sweep/Transition;)V
    .locals 7
    .param p1    # Lcom/voovio/sweep/Voovio;
    .param p2    # F
    .param p3    # [F
    .param p4    # I
    .param p5    # Lcom/voovio/sweep/Transition;

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_aAuxMatrix:[F

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    move v3, v1

    move-object v4, p3

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iMatrixLoc:I

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_aAuxMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :goto_0
    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iFactorLoc:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iSlicesLoc:I

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v2, v2, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget v2, v2, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iRotationsLoc:I

    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iTurnDirectionLoc:I

    if-eqz p5, :cond_1

    iget v0, p5, Lcom/voovio/sweep/Transition;->m_fTurnDirection:F

    :goto_1
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iOverlappingLoc:I

    if-eqz p5, :cond_2

    iget v0, p5, Lcom/voovio/sweep/Transition;->m_fOverlapping:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    :goto_2
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget v2, p1, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iTexLoc:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-virtual {p0}, Lcom/voovio/sweep/SweepOffScreen;->drawGeometry()V

    return-void

    :cond_0
    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iMatrixLoc:I

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public enabledMipMaps(Z)V
    .locals 0
    .param p1    # Z

    sput-boolean p1, Lcom/voovio/sweep/Voovio;->MIPMAPS:Z

    return-void
.end method

.method public getNextFrame()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateScene()V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->waitForTransitionReady()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SweepOffScreen"

    const-string v2, "Timeout requesting next frame: Transition image not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    :goto_1
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    invoke-virtual {v1}, Lcom/voovio/sweep/GLOffScreen;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public getNextFrameAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateScene()V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->waitForTransitionReady()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SweepOffScreen"

    const-string v2, "Timeout requesting next frame: Transition image not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    :goto_1
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    invoke-virtual {v1}, Lcom/voovio/sweep/GLOffScreen;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1
.end method

.method public getNextFrameAsByteBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 4
    .param p1    # Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateScene()V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->waitForTransitionReady()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SweepOffScreen"

    const-string v3, "Timeout requesting next frame: Transition image not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    invoke-virtual {v2, p1}, Lcom/voovio/sweep/GLOffScreen;->getByteBuffer(Ljava/nio/ByteBuffer;)I

    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    if-le v2, v0, :cond_2

    :goto_1
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getSweep()Lcom/voovio/sweep/Sweep;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    return-object v0
.end method

.method public getTotalNumberOfFrames()I
    .locals 4

    const/4 v3, 0x0

    iput v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    invoke-direct {p0, v3}, Lcom/voovio/sweep/SweepOffScreen;->setCurrentEdge(I)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateCameraValues()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iput v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    invoke-direct {p0, v3}, Lcom/voovio/sweep/SweepOffScreen;->setCurrentEdge(I)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateCameraValues()V

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateScene()V

    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public init(IIII)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/16 v1, 0x64

    iput p1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    iput p2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    const/high16 v0, 0x447a0000

    int-to-float v2, p3

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nFramePeriod_ms:I

    iput p4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nConfig:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    new-instance v0, Lcom/voovio/sweep/GLOffScreen;

    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    iget v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nConfig:I

    invoke-direct {v0, v2, v3, v4}, Lcom/voovio/sweep/GLOffScreen;-><init>(III)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    invoke-virtual {v0, p0}, Lcom/voovio/sweep/GLOffScreen;->setRenderer(Lcom/voovio/sweep/GLOffScreen$Renderer;)V

    new-instance v0, Lcom/voovio/sweep/SweepOffScreen$1;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepOffScreen$1;-><init>(Lcom/voovio/sweep/SweepOffScreen;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/voovio/sweep/SweepOffScreen$2;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepOffScreen$2;-><init>(Lcom/voovio/sweep/SweepOffScreen;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    new-instance v0, Lcom/voovio/voo3d/scenegraph/Camera3D;

    const/high16 v3, 0x42480000

    const/high16 v4, 0x3f000000

    const v5, 0x461c4000

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;-><init>(IIFFF)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    new-instance v0, Lcom/voovio/sweep/FrustumLimiter;

    invoke-direct {v0}, Lcom/voovio/sweep/FrustumLimiter;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_aAuxMatrix:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_aNodes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_aEdges:Ljava/util/ArrayList;

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v0, v0, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v1, v0, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v0, v0, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget-object v12, v0, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v0, v0, Lcom/voovio/sweep/Edge;->m_nType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v0, v0, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v0, :cond_1

    const/high16 v2, 0x3f800000

    iget-object v3, v1, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/voovio/sweep/SweepOffScreen;->drawVoovio(Lcom/voovio/sweep/Voovio;F[FILcom/voovio/sweep/Transition;)V

    const/high16 v4, 0x3f800000

    iget-object v5, v12, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v12

    invoke-virtual/range {v2 .. v7}, Lcom/voovio/sweep/SweepOffScreen;->drawVoovio(Lcom/voovio/sweep/Voovio;F[FILcom/voovio/sweep/Transition;)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 v0, 0x3f800000

    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    sub-float v2, v0, v2

    iget-object v3, v1, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/voovio/sweep/SweepOffScreen;->drawVoovio(Lcom/voovio/sweep/Voovio;F[FILcom/voovio/sweep/Transition;)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v1, v0}, Lcom/voovio/sweep/SweepOffScreen;->drawVoovio(Lcom/voovio/sweep/Voovio;F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v0, v0, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v0, :cond_3

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/voovio/sweep/SweepOffScreen;->drawVoovio(Lcom/voovio/sweep/Voovio;F[FILcom/voovio/sweep/Transition;)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 v4, 0x3f800000

    iget-object v5, v12, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    invoke-virtual {v12}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v12

    invoke-virtual/range {v2 .. v7}, Lcom/voovio/sweep/SweepOffScreen;->drawVoovio(Lcom/voovio/sweep/Voovio;F[FILcom/voovio/sweep/Transition;)V

    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v4

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v5, v0, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/voovio/sweep/SweepOffScreen;->drawVoovio(Lcom/voovio/sweep/Voovio;F[FILcom/voovio/sweep/Transition;)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x0

    aget-object v8, v0, v2

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x1

    aget-object v10, v0, v2

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    const/4 v2, 0x1

    aget-object v9, v0, v2

    :goto_1
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v10, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    const/4 v2, 0x0

    aget-object v11, v0, v2

    :goto_2
    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/voovio/sweep/SweepOffScreen;->drawVoovio(Lcom/voovio/sweep/Voovio;F[FILcom/voovio/sweep/Transition;)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    if-eqz v11, :cond_4

    const/high16 v4, 0x3f800000

    iget-object v5, v11, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    invoke-virtual {v11}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v11

    invoke-virtual/range {v2 .. v7}, Lcom/voovio/sweep/SweepOffScreen;->drawVoovio(Lcom/voovio/sweep/Voovio;F[FILcom/voovio/sweep/Transition;)V

    :cond_4
    if-eqz v9, :cond_5

    const/high16 v4, 0x3f800000

    iget-object v5, v9, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    invoke-virtual {v9}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    invoke-virtual/range {v2 .. v7}, Lcom/voovio/sweep/SweepOffScreen;->drawVoovio(Lcom/voovio/sweep/Voovio;F[FILcom/voovio/sweep/Transition;)V

    :cond_5
    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/voovio/sweep/SweepOffScreen;->drawVoovio(Lcom/voovio/sweep/Voovio;F[FILcom/voovio/sweep/Transition;)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    goto :goto_2
.end method

.method public onInit(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 15
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2    # Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v5, 0x901

    invoke-static {v5}, Landroid/opengl/GLES20;->glFrontFace(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_strVShader:Ljava/lang/String;

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_strFShader:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/voovio/gles/ShaderHelper;->LoadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    const-string v6, "a_position"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iPositionLoc:I

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    const-string v6, "a_vertex"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iVertexLoc:I

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    const-string v6, "a_uvcoords"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iUVCoordsLoc:I

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    const-string v6, "u_texId"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iTexLoc:I

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    const-string v6, "u_MVPMatrix"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iMatrixLoc:I

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    const-string v6, "u_factor"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iFactorLoc:I

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    const-string v6, "u_slices"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iSlicesLoc:I

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    const-string v6, "u_overlapping"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iOverlappingLoc:I

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    const-string v6, "u_rotations"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iRotationsLoc:I

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    const-string v6, "u_turnDirection"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iTurnDirectionLoc:I

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->GRADIENT_SIZE:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000

    div-float v1, v5, v6

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->GRADIENT_SIZE:I

    new-array v0, v5, [F

    const/4 v3, 0x0

    :goto_0
    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->GRADIENT_SIZE:I

    if-lt v3, v5, :cond_1

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->GRADIENT_SIZE:I

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_iProgId:I

    const-string v6, "u_alphaGradient"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->GRADIENT_SIZE:I

    invoke-static {v4, v5, v2}, Landroid/opengl/GLES20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->start()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v5, -0x42b33333

    const v6, 0x3f8ccccd

    const-wide/high16 v7, 0x3ff0000000000000L

    const-wide v9, 0x4005bf0a8b145769L

    const-wide v11, -0x403ccccccccccccdL

    int-to-float v13, v3

    sub-float/2addr v13, v1

    float-to-double v13, v13

    mul-double/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    double-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->setGLViewport()V

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v5, v6}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setAutodriveVelocity(FF)V
    .locals 0
    .param p1    # F
    .param p2    # F

    iput p1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocityForward:F

    iput p2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocitySideward:F

    return-void
.end method

.method public setSweep(Lcom/voovio/sweep/Sweep;)V
    .locals 2
    .param p1    # Lcom/voovio/sweep/Sweep;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    const/4 v0, -0x1

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nCurEdgeIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fCurEdgeFactor:F

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    new-instance v1, Lcom/voovio/sweep/SweepOffScreen$3;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/SweepOffScreen$3;-><init>(Lcom/voovio/sweep/SweepOffScreen;)V

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    :cond_2
    iput-object p1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setSweep(Lcom/voovio/sweep/Sweep;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/FrustumLimiter;->Init(Lcom/voovio/sweep/Sweep;)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->computePath()V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->start()V

    goto :goto_0
.end method
