.class public final Lcom/voovio/sweep/SweepView;
.super Landroid/widget/RelativeLayout;
.source "SweepView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voovio/sweep/SweepView$OnSweepViewListener;
    }
.end annotation


# static fields
.field public static final AD_DIR_BACKWARD_CONTINUOUS:I = 0x5

.field public static final AD_DIR_BACKWARD_STEP:I = 0x1

.field public static final AD_DIR_FORWARD_CONTINUOUS:I = 0x4

.field public static final AD_DIR_FORWARD_STEP:I = 0x0

.field public static final AD_DIR_LEFT_CONTINUOUS:I = 0x6

.field public static final AD_DIR_LEFT_STEP:I = 0x2

.field public static final AD_DIR_RIGHT_CONTINUOUS:I = 0x7

.field public static final AD_DIR_RIGHT_STEP:I = 0x3

.field public static final AD_POS_END:I = 0x7fffffff

.field public static final AD_POS_NEXT:I = 0x7ffffffe

.field public static final AD_POS_PREV:I = -0x7fffffff

.field public static final AD_POS_START:I = -0x80000000

.field public static final DIRECTION_BACKWARD:B = 0x2t

.field public static final DIRECTION_FORWARD:B = 0x1t

.field public static final DIRECTION_LEFT:B = 0x4t

.field public static final DIRECTION_NONE:B = 0x0t

.field public static final DIRECTION_RIGHT:B = 0x8t

.field private static final OPERATION_NAVIGATION:I = 0x0

.field private static final OPERATION_ZOOM:I = 0x1

.field static final m_movAveragePeriod:F = 40.0f

.field static final smoothFactor:F = 0.1f


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

.field m_aKeyEdges:Ljava/util/ArrayList;
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

.field private m_bAutoDrive:Z

.field private m_bAvailableDirections:B

.field private m_bFastMove:Z

.field private m_bFirstDraw:Z

.field private m_bGLViewReady:Z

.field private m_bPreloadImages:Z

.field private m_bPreloadImagesOnGPU:Z

.field private m_bResumed:Z

.field private m_bStart:Z

.field private m_fAngleStepX:F

.field private m_fAngleStepY:F

.field private m_fAutodriveVelocityForward:F

.field private m_fAutodriveVelocitySideward:F

.field m_fCurEdgeFactor:F

.field private m_fCurFOV:F

.field private m_fFastMoveVelocityForward:F

.field private m_fFastMoveVelocitySideward:F

.field private m_fFovStep:F

.field private m_fMaxFOV:F

.field private m_fMinFOV:F

.field private m_fMoveDirection:F

.field private m_fbAlphaGradient:Ljava/nio/FloatBuffer;

.field private m_iALoc_3:I

.field private m_iAlphaLoc_1:I

.field private m_iBLoc_3:I

.field private m_iInvGradLoc_2:I

.field private m_iMatrixLoc_1:I

.field private m_iMatrixLoc_2:I

.field private m_iMatrixLoc_3:I

.field private m_iP1Loc_2:I

.field private m_iP1Loc_3:I

.field private m_iP2Loc_2:I

.field private m_iP2Loc_3:I

.field private m_iPositionLoc_2:I

.field private m_iPositionLoc_3:I

.field private m_iProg1Id:I

.field private m_iProg2Id:I

.field private m_iProg3Id:I

.field private m_iTexLoc_1:I

.field private m_iTexLoc_2:I

.field private m_iTexLoc_3:I

.field private m_iUVCoordsLoc_1:I

.field private m_iUVCoordsLoc_2:I

.field private m_iUVCoordsLoc_3:I

.field private m_iVertexLoc_1:I

.field private m_iVertexLoc_2:I

.field private m_iVertexLoc_3:I

.field m_lastRealTimeMeasurement_ms:J

.field m_movAverageDeltaTime_ms:F

.field private m_nAutodriveOnStart:I

.field m_nCurEdgeIndex:I

.field private m_nCurrentPosition:I

.field private m_nHighResSampleSize:I

.field private m_nLastPostedPosition:I

.field private m_nLowResSampleSize:I

.field private m_nMaxPosition:I

.field private m_nOperation:I

.field private m_nZoomCurStep:I

.field private m_nZoomSteps:I

.field private m_oAutodriveRunnable:Ljava/lang/Runnable;

.field private m_oBitmapPreferredConfig:Landroid/graphics/Bitmap$Config;

.field m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

.field m_oCurEdge:Lcom/voovio/sweep/Edge;

.field m_oCurVoovio:Lcom/voovio/sweep/Voovio;

.field private m_oDirectionsChangedEventRunnable:Ljava/lang/Runnable;

.field private m_oGLView:Landroid/opengl/GLSurfaceView;

.field private m_oHandler:Landroid/os/Handler;

.field private m_oImageChangedEventRunnable:Ljava/lang/Runnable;

.field private m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

.field private m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

.field private m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

.field m_oPrevEdge:Lcom/voovio/sweep/Edge;

.field private m_oRenderLock:Ljava/lang/Object;

.field private m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

.field private m_oSetGLViewportRunnable:Ljava/lang/Runnable;

.field private m_oStopAutodriveRunnable:Ljava/lang/Runnable;

.field m_oSweep:Lcom/voovio/sweep/Sweep;

.field private m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

.field private m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

.field private m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

.field m_smoothedDeltaRealTime_ms:F

.field private m_strFShader:Ljava/lang/String;

.field private m_strVShader1:Ljava/lang/String;

.field private m_strVShader2:Ljava/lang/String;

.field private m_strVShader3:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/voovio/sweep/SweepView;-><init>(Landroid/content/Context;Lcom/voovio/sweep/ImageProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/voovio/sweep/ImageProvider;)V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bFastMove:Z

    const/high16 v0, 0x43fa0000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fFastMoveVelocityForward:F

    const/high16 v0, 0x42960000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fFastMoveVelocitySideward:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    const/high16 v0, 0x41700000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    const/high16 v0, 0x42480000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    const/16 v0, 0x8

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aAuxMatrix:[F

    const/high16 v0, 0x418c0000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oImageChangedEventRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oDirectionsChangedEventRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSetGLViewportRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oStopAutodriveRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bResumed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImages:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nHighResSampleSize:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nLowResSampleSize:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oBitmapPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/16 v0, 0x28

    iput v0, p0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_fbAlphaGradient:Ljava/nio/FloatBuffer;

    const-string v0, "attribute vec4 a_vertex;\nattribute vec2 a_uvcoords;\nuniform mat4 u_MVPMatrix;\nuniform float u_alpha;\nvarying vec2 v_uvcoords;\nvarying float v_alpha;\nvoid main()\n{\ngl_Position = u_MVPMatrix * a_vertex;\nv_alpha = u_alpha;\nv_uvcoords = a_uvcoords;\n}\n"

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_strVShader1:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "const int gradientSize = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

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

    const-string v1, "uniform mat4 u_MVPMatrix;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform float u_alphaGradient["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform int u_p1;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform int u_p2;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform int u_inverseGradient;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "varying vec2 v_uvcoords;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "varying float v_alpha;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "float getAlpha(int pos)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "float fAlpha = 1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if ( u_inverseGradient == 0 && pos <= u_p2)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha = u_alphaGradient[pos-u_p1];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "else if ( u_inverseGradient == 1 && pos >= u_p1)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha = u_alphaGradient[u_p2-pos];\n"

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

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_strVShader2:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "const int gradientSize = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

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

    const-string v1, "uniform mat4 u_MVPMatrix;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform float u_alphaGradient["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform int u_p1;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform int u_p2;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform float u_a;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uniform float u_b;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "varying vec2 v_uvcoords;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "varying float v_alpha;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "float getAlpha(int pos)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "float fAlpha;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if ( pos >= u_p1 && pos <= u_p2 ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha = u_a * float(pos) + u_b;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if ( pos < u_p1 + gradientSize ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if ( u_p1 == 0 )\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha *= u_alphaGradient[pos-u_p1];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "float fAlphaI = u_a * float(u_p1+gradientSize) + u_b;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha = fAlphaI + (1.0 - fAlphaI) * u_alphaGradient[u_p1+gradientSize-pos-1];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} else if ( pos > u_p2 - gradientSize ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if ( u_p1 == 0 ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "float fAlphaI = u_a * float(u_p2-gradientSize) + u_b;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha = fAlphaI + (1.0 - fAlphaI) * u_alphaGradient[pos-u_p2+gradientSize-1];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} else\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha *= u_alphaGradient[u_p2-pos];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} else\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fAlpha = 1.0;\n"

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

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_strVShader3:Ljava/lang/String;

    const-string v0, "precision mediump float;\nvarying vec2 v_uvcoords;\nvarying float v_alpha;\nuniform sampler2D u_texId;\nvoid main()\n{\ngl_FragColor = texture2D(u_texId, v_uvcoords);\ngl_FragColor.a = v_alpha;\n}\n"

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_strFShader:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_1:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_1:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_1:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iAlphaLoc_1:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_1:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_2:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_2:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_2:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_2:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iP1Loc_2:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iP2Loc_2:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iInvGradLoc_2:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_2:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_3:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_3:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_3:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_3:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iP1Loc_3:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iP2Loc_3:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iALoc_3:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iBLoc_3:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_3:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    const/4 v0, -0x1

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:B

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/voovio/sweep/ResourceManager;

    invoke-direct {v0, p2}, Lcom/voovio/sweep/ResourceManager;-><init>(Lcom/voovio/sweep/ImageProvider;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    new-instance v0, Lcom/voovio/voo3d/scenegraph/Camera3D;

    const/16 v1, 0x64

    const/16 v2, 0x64

    const/high16 v3, 0x42480000

    const/high16 v4, 0x3f000000

    const v5, 0x461c4000

    invoke-direct/range {v0 .. v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;-><init>(IIFFF)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    new-instance v0, Lcom/voovio/sweep/FrustumLimiter;

    invoke-direct {v0}, Lcom/voovio/sweep/FrustumLimiter;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aAuxMatrix:[F

    new-instance v0, Lcom/voovio/sweep/SweepView$1;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$1;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/voovio/sweep/SweepView$2;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$2;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oImageChangedEventRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/voovio/sweep/SweepView$3;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$3;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/voovio/sweep/SweepView$4;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$4;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oDirectionsChangedEventRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/voovio/sweep/SweepView$5;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$5;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSetGLViewportRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/voovio/sweep/SweepView$6;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$6;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oStopAutodriveRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    iget v0, p0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000

    div-float v7, v0, v1

    iget v0, p0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    new-array v6, v0, [F

    const/4 v8, 0x0

    :goto_0
    iget v0, p0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    if-lt v8, v0, :cond_0

    iget v0, p0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_fbAlphaGradient:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_fbAlphaGradient:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    return-void

    :cond_0
    const v0, -0x42b33333

    const v1, 0x3f8ccccd

    const-wide/high16 v2, 0x3ff0000000000000L

    const-wide v4, 0x4005bf0a8b145769L

    const-wide v9, -0x403ccccccccccccdL

    int-to-float v11, v8

    sub-float/2addr v11, v7

    float-to-double v11, v11

    mul-double/2addr v9, v11

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/SweepView$OnSweepViewListener;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/voovio/sweep/SweepView;)I
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    return v0
.end method

.method static synthetic access$10(Lcom/voovio/sweep/SweepView;)I
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nLowResSampleSize:I

    return v0
.end method

.method static synthetic access$11(Lcom/voovio/sweep/SweepView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    return-void
.end method

.method static synthetic access$12(Lcom/voovio/sweep/SweepView;)V
    .locals 0

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->start()V

    return-void
.end method

.method static synthetic access$13(Lcom/voovio/sweep/SweepView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    return-void
.end method

.method static synthetic access$14(Lcom/voovio/sweep/SweepView;)V
    .locals 0

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeAvailableDirections()V

    return-void
.end method

.method static synthetic access$15(Lcom/voovio/sweep/SweepView;)V
    .locals 0

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraValues()V

    return-void
.end method

.method static synthetic access$16(Lcom/voovio/sweep/SweepView;)V
    .locals 0

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeCurrentPosition()V

    return-void
.end method

.method static synthetic access$17(Lcom/voovio/sweep/SweepView;)F
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    return v0
.end method

.method static synthetic access$18(Lcom/voovio/sweep/SweepView;)F
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    return v0
.end method

.method static synthetic access$19(Lcom/voovio/sweep/SweepView;F)V
    .locals 0

    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    return-void
.end method

.method static synthetic access$2(Lcom/voovio/sweep/SweepView;)I
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    return v0
.end method

.method static synthetic access$20(Lcom/voovio/sweep/SweepView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->updateGLViewport(Z)V

    return-void
.end method

.method static synthetic access$21(Lcom/voovio/sweep/SweepView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$22(Lcom/voovio/sweep/SweepView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oZoomChangedEventRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$23(Lcom/voovio/sweep/SweepView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$3(Lcom/voovio/sweep/SweepView;)B
    .locals 1

    iget-byte v0, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:B

    return v0
.end method

.method static synthetic access$4(Lcom/voovio/sweep/SweepView;Lcom/voovio/voo3d/view/Viewport;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->setGLViewport(Lcom/voovio/voo3d/view/Viewport;)V

    return-void
.end method

.method static synthetic access$5(Lcom/voovio/sweep/SweepView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/voovio/sweep/SweepView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    return v0
.end method

.method static synthetic access$7(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/ResourceManager;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    return-object v0
.end method

.method static synthetic access$8(Lcom/voovio/sweep/SweepView;)I
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nHighResSampleSize:I

    return v0
.end method

.method static synthetic access$9(Lcom/voovio/sweep/SweepView;)Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oBitmapPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;
    .locals 3

    new-instance v1, Lcom/voovio/sweep/Node;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/voovio/sweep/Edge;

    invoke-direct {v0, v1, v1, p5}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private computeAvailableDirections()V
    .locals 3

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepView;->getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B

    move-result v0

    iget-byte v1, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:B

    if-eq v0, v1, :cond_0

    iput-byte v0, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:B

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oDirectionsChangedEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private computeCurrentPosition()V
    .locals 4

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v0, v0, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v0, v0, Lcom/voovio/sweep/Node;->m_nPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v2, v2, Lcom/voovio/sweep/Node;->m_nPosition:I

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_nPosition:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    return-void
.end method

.method private computePath()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/4 v4, 0x0

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v5

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v3, v3, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    int-to-float v3, v3

    const/high16 v6, 0x40000000

    div-float v15, v3, v6

    const/high16 v3, 0x3f000000

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v6, v6, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v6, v6

    mul-float/2addr v3, v6

    float-to-double v6, v3

    const/high16 v3, 0x3f000000

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v8, v8, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    mul-float/2addr v3, v8

    const v8, 0x3c8efa35

    mul-float/2addr v3, v8

    float-to-double v0, v3

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->tan(D)D

    move-result-wide v28

    div-double v6, v6, v28

    double-to-float v11, v6

    div-float v3, v15, v11

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    double-to-float v12, v6

    new-instance v25, Lcom/voovio/voo3d/data/Vector3;

    const/4 v3, 0x0

    const/4 v6, 0x0

    neg-float v7, v15

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v6, v7}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    new-instance v26, Lcom/voovio/voo3d/data/Vector3;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v3, v6, v15}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/4 v3, 0x1

    move/from16 v0, v18

    if-le v0, v3, :cond_9

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    :goto_1
    invoke-static {v5}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-static/range {v27 .. v27}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    const/high16 v13, 0x42700000

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_a

    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_nPosition:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Voovio;

    iget-object v3, v4, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v6, 0x1

    aget-object v23, v3, v6

    iget-object v3, v4, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v6, 0x0

    aget-object v20, v3, v6

    if-eqz v20, :cond_7

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    const/4 v6, 0x1

    aget-object v24, v3, v6

    invoke-virtual/range {v20 .. v20}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v23, :cond_2

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    const/4 v6, 0x1

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    :goto_3
    iget-object v6, v4, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/voovio/sweep/SweepView;->appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;

    move-result-object v19

    const/4 v3, 0x1

    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v20 .. v20}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v14, v9, v3

    new-instance v21, Lcom/voovio/sweep/Node;

    iget-object v3, v4, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5, v3, v6}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    cmpg-float v3, v14, v3

    if-gez v3, :cond_3

    move-object/from16 v3, v25

    :goto_4
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual/range {v27 .. v27}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    mul-float v3, v14, v12

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    new-instance v22, Lcom/voovio/sweep/Node;

    iget v3, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v4, v5, v1, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v19, Lcom/voovio/sweep/Edge;

    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v21, Lcom/voovio/sweep/Node;

    iget v3, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v4, v5, v1, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    const/4 v6, 0x1

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    const/4 v3, 0x0

    cmpg-float v3, v14, v3

    if-gez v3, :cond_4

    move-object/from16 v3, v26

    :goto_5
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    invoke-virtual/range {v27 .. v27}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    neg-float v3, v14

    mul-float/2addr v3, v12

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v3, v5}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    new-instance v22, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v24

    iget v3, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v19, Lcom/voovio/sweep/Edge;

    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v3, v5}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    new-instance v21, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v24

    iget v3, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v22, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v24

    iget v6, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v5, v3, v6}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v19, Lcom/voovio/sweep/Edge;

    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, 0x0

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_3

    :cond_3
    move-object/from16 v3, v26

    goto/16 :goto_4

    :cond_4
    move-object/from16 v3, v25

    goto/16 :goto_5

    :cond_5
    if-eqz v23, :cond_6

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    const/4 v6, 0x1

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    :goto_7
    iget-object v6, v4, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/voovio/sweep/SweepView;->appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;

    move-result-object v19

    const/4 v3, 0x1

    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v21, Lcom/voovio/sweep/Node;

    iget-object v3, v4, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5, v3, v6}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v22, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, 0x0

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    iget-object v6, v4, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v3, v6, v7}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v19, Lcom/voovio/sweep/Edge;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v21, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, 0x0

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    iget-object v6, v4, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v3, v6, v7}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v22, Lcom/voovio/sweep/Node;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, 0x1

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v24

    iget v7, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v3, v6, v7}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v19, Lcom/voovio/sweep/Edge;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_6
    iget-object v3, v4, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto/16 :goto_7

    :cond_7
    invoke-virtual/range {v23 .. v23}, Lcom/voovio/sweep/Transition;->isTranslation()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    const/4 v6, 0x1

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v6, v4, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/voovio/sweep/SweepView;->appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;

    move-result-object v19

    const/4 v3, 0x1

    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v21, Lcom/voovio/sweep/Node;

    iget-object v3, v4, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5, v3, v6}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v6, 0x43160000

    add-float/2addr v3, v6

    iput v3, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    new-instance v22, Lcom/voovio/sweep/Node;

    iget-object v3, v4, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v3, v6}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v19, Lcom/voovio/sweep/Edge;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v4, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/voovio/sweep/SweepView;->appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;

    move-result-object v19

    const/4 v3, 0x1

    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_8
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    const/4 v6, 0x1

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v6, v4, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/voovio/sweep/SweepView;->appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;

    move-result-object v19

    const/4 v3, 0x1

    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Voovio;

    iget-object v3, v4, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v6, v4, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/voovio/sweep/SweepView;->appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;

    move-result-object v19

    const/4 v3, 0x1

    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v21, Lcom/voovio/sweep/Node;

    iget-object v3, v4, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5, v3, v6}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/high16 v6, 0x43960000

    add-float/2addr v3, v6

    iput v3, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    new-instance v22, Lcom/voovio/sweep/Node;

    iget-object v3, v4, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v3, v6}, Lcom/voovio/sweep/Node;-><init>(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v19, Lcom/voovio/sweep/Edge;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/sweep/Edge;-><init>(Lcom/voovio/sweep/Node;Lcom/voovio/sweep/Node;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v4, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/voovio/sweep/SweepView;->appendZeroEdge(Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;FI)Lcom/voovio/sweep/Edge;

    move-result-object v19

    const/4 v3, 0x1

    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/voovio/sweep/Edge;

    move-object/from16 v0, v19

    iget v3, v0, Lcom/voovio/sweep/Edge;->m_nType:I

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget v10, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    :goto_8
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    if-nez v16, :cond_c

    const/4 v3, 0x0

    :goto_9
    iput v3, v6, Lcom/voovio/sweep/Node;->m_nPosition:I

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v6, v6, Lcom/voovio/sweep/Node;->m_nPosition:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/voovio/sweep/Edge;->m_fValue:F

    mul-float/2addr v7, v13

    div-float/2addr v7, v10

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v3, Lcom/voovio/sweep/Node;->m_nPosition:I

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget v10, v0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    add-int/lit8 v7, v16, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_nPosition:I

    goto :goto_9
.end method

.method private drawScene(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bResumed:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/SweepView;->updateCameraViewport()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v2, v4, v7}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bResumed:Z

    :cond_1
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v0, v2, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget-object v0, v2, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v2, v2, Lcom/voovio/sweep/Edge;->m_nType:I

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_4

    const/high16 v2, 0x3f800000

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v4}, Lcom/voovio/sweep/SweepView;->drawVoovioWithAlpha(Lcom/voovio/sweep/Voovio;F[F)V

    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x302

    const/16 v4, 0x303

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v4}, Lcom/voovio/sweep/SweepView;->drawVoovioWithAlpha(Lcom/voovio/sweep/Voovio;F[F)V

    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x418c0000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    new-instance v4, Lcom/voovio/sweep/SweepView$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/voovio/sweep/SweepView$11;-><init>(Lcom/voovio/sweep/SweepView;)V

    const-wide/16 v9, 0x10

    invoke-virtual {v2, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    :cond_3
    return-void

    :cond_4
    const/high16 v2, 0x3f800000

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v4}, Lcom/voovio/sweep/SweepView;->drawVoovioWithAlpha(Lcom/voovio/sweep/Voovio;F[F)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_6

    const/high16 v2, 0x3f800000

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v4}, Lcom/voovio/sweep/SweepView;->drawVoovioWithAlpha(Lcom/voovio/sweep/Voovio;F[F)V

    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x302

    const/16 v4, 0x303

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v4, v4, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v4}, Lcom/voovio/sweep/SweepView;->drawTransitionOverlappingArea(Lcom/voovio/sweep/Voovio;FLcom/voovio/sweep/Transition;)V

    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0

    :cond_6
    const/high16 v2, 0x3f800000

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v4}, Lcom/voovio/sweep/SweepView;->drawVoovioWithAlpha(Lcom/voovio/sweep/Voovio;F[F)V

    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x302

    const/16 v4, 0x303

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v2, v2, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget v0, v2, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v4, 0x1

    aget-object v15, v2, v4

    if-eqz v15, :cond_9

    invoke-virtual {v15}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v15, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    const/4 v4, 0x0

    aget-object v3, v2, v4

    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {v15}, Lcom/voovio/sweep/Transition;->getRotationAngle()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_a

    const/4 v13, 0x1

    :goto_2
    iget v2, v15, Lcom/voovio/sweep/Transition;->m_fOverlapping:F

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v0, v9

    move/from16 v18, v0

    if-eqz v13, :cond_b

    sub-int v5, v19, v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    add-int v6, v5, v2

    :goto_3
    iget-object v4, v3, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    if-eqz v13, :cond_c

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/voovio/sweep/SweepView;->drawAlphaGradientStrip(Lcom/voovio/sweep/Voovio;[FIII)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v4, 0x0

    aget-object v14, v2, v4

    if-eqz v14, :cond_d

    invoke-virtual {v14}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v14, Lcom/voovio/sweep/Transition;->m_aVoovios:[Lcom/voovio/sweep/Voovio;

    const/4 v4, 0x1

    aget-object v8, v2, v4

    :goto_5
    if-eqz v8, :cond_8

    invoke-virtual {v14}, Lcom/voovio/sweep/Transition;->getRotationAngle()F

    move-result v2

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_e

    const/4 v13, 0x1

    :goto_6
    iget v2, v14, Lcom/voovio/sweep/Transition;->m_fOverlapping:F

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v0, v9

    move/from16 v18, v0

    if-eqz v13, :cond_f

    sub-int v5, v19, v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    add-int v6, v5, v2

    :goto_7
    iget-object v9, v8, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    if-eqz v13, :cond_10

    const/4 v12, 0x1

    :goto_8
    move-object/from16 v7, p0

    move v10, v5

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/voovio/sweep/SweepView;->drawAlphaGradientStrip(Lcom/voovio/sweep/Voovio;[FIII)V

    :cond_8
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    goto/16 :goto_0

    :cond_9
    const/4 v3, 0x0

    goto :goto_1

    :cond_a
    const/4 v13, 0x0

    goto :goto_2

    :cond_b
    move/from16 v6, v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    sub-int v5, v6, v2

    goto :goto_3

    :cond_c
    const/4 v7, 0x0

    goto :goto_4

    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    :cond_e
    const/4 v13, 0x0

    goto :goto_6

    :cond_f
    move/from16 v6, v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    sub-int v5, v6, v2

    goto :goto_7

    :cond_10
    const/4 v12, 0x0

    goto :goto_8
.end method

.method private fillRenderMatrices()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_fRenderMatrix:[F

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    invoke-static {v2}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

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
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

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

.method private getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    move-object v2, p1

    :goto_0
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_fValue:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    iget v3, v2, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-lt v3, v1, :cond_4

    :cond_0
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-eq v3, v1, :cond_1

    iget v3, v2, Lcom/voovio/sweep/Edge;->m_nType:I

    if-ne v3, v6, :cond_6

    iget v3, v2, Lcom/voovio/sweep/Edge;->m_fAngle01Y:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5

    const/4 v3, 0x4

    int-to-byte v0, v3

    :cond_1
    :goto_1
    shl-int/lit8 v3, v0, 0x4

    int-to-byte v0, v3

    move-object v2, p1

    :goto_2
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_fValue:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    iget v3, v2, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-gtz v3, :cond_7

    :cond_2
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-eqz v3, :cond_3

    iget v3, v2, Lcom/voovio/sweep/Edge;->m_nType:I

    if-ne v3, v6, :cond_9

    iget v3, v2, Lcom/voovio/sweep/Edge;->m_fAngle01Y:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_8

    or-int/lit8 v3, v0, 0x8

    int-to-byte v0, v3

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    iget v4, v2, Lcom/voovio/sweep/Edge;->m_nIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Edge;

    goto :goto_0

    :cond_5
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_fAngle01Y:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    const/16 v3, 0x8

    int-to-byte v0, v3

    goto :goto_1

    :cond_6
    int-to-byte v0, v6

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    iget v4, v2, Lcom/voovio/sweep/Edge;->m_nIndex:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Edge;

    goto :goto_2

    :cond_8
    iget v3, v2, Lcom/voovio/sweep/Edge;->m_fAngle01Y:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    or-int/lit8 v3, v0, 0x4

    int-to-byte v0, v3

    goto :goto_3

    :cond_9
    or-int/lit8 v3, v0, 0x2

    int-to-byte v0, v3

    goto :goto_3
.end method

.method private getCurrentCameraDirection(Lcom/voovio/voo3d/data/Vector3;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v0, v0, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v0, v0, Lcom/voovio/sweep/Node;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p1, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v0, v0, Lcom/voovio/sweep/Edge;->m_fAngle01X:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v0, v0, Lcom/voovio/sweep/Edge;->m_fAngle01X:F

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v1, v1, Lcom/voovio/sweep/Edge;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p1, v0, v1}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v0, v0, Lcom/voovio/sweep/Edge;->m_fAngle01Y:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v0, v0, Lcom/voovio/sweep/Edge;->m_fAngle01Y:F

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    :cond_1
    return-void
.end method

.method private getNextKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p1, Lcom/voovio/sweep/Edge;->m_nIndex:I

    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_1

    iget v0, p1, Lcom/voovio/sweep/Edge;->m_nIndex:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Edge;

    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_1

    iget-boolean v3, v1, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    if-eqz v3, :cond_0

    :cond_1
    return-object v1
.end method

.method private getPrevKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;
    .locals 3

    const/4 v1, 0x0

    iget v2, p1, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-lez v2, :cond_1

    iget v0, p1, Lcom/voovio/sweep/Edge;->m_nIndex:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Edge;

    if-lez v0, :cond_1

    iget-boolean v2, v1, Lcom/voovio/sweep/Edge;->m_bKeyEdge:Z

    if-eqz v2, :cond_0

    :cond_1
    return-object v1
.end method

.method private setAutodrive(Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v5, 0x42652ee0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/voovio/sweep/SweepView;->hasAutodrive()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    const/16 v3, 0xc

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v4}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->getCurrentCameraDirection(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v3, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, v4, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v3, v0, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v3

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v3, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v4, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v3, v0, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v3

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    invoke-static {v0}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    iput v2, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v5, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    :goto_0
    invoke-interface {v3, v1}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    invoke-interface {v1, p1}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onAutodriveStateChanged(Z)V

    :cond_2
    iput-boolean p1, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private setCurrentEdge(I)V
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Edge;

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v1, v1, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v1, v1, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v0, v0, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v0, v0, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    goto :goto_0
.end method

.method private setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 4

    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oImageChangedEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    :cond_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->fillRenderMatrices()V

    return-void
.end method

.method private setGLViewport(Lcom/voovio/voo3d/view/Viewport;)V
    .locals 4

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getOffsetX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getOffsetY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method private start()V
    .locals 2

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraViewport()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeAvailableDirections()V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraValues()V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeCurrentPosition()V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->startAutodriveIfNeeded()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startAutodriveIfNeeded()V
    .locals 4

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bStart:Z

    new-instance v0, Lcom/voovio/sweep/SweepView$10;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepView$10;-><init>(Lcom/voovio/sweep/SweepView;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oAutodriveRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private updateCameraValues()V
    .locals 8

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v3, v3, Lcom/voovio/sweep/Node;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget v3, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v5, v5, Lcom/voovio/sweep/Edge;->m_vV01:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v3, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v5, v5, Lcom/voovio/sweep/Edge;->m_vV01:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v3, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v5, v5, Lcom/voovio/sweep/Edge;->m_vV01:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-direct {p0, v2}, Lcom/voovio/sweep/SweepView;->getCurrentCameraDirection(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_fFOV:F

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v4, v4, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v4, v4, Lcom/voovio/sweep/Node;->m_fFOV:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_fFOV:F

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v5, v5, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v5, v5, Lcom/voovio/sweep/Node;->m_fFOV:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v6, v6, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v6, v6, Lcom/voovio/sweep/Node;->m_fFOV:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v3, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v4, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v5, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v6, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

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
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v3}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/voovio/voo3d/view/Viewport;->setOffsetX(F)V

    invoke-virtual {v2, v4}, Lcom/voovio/voo3d/view/Viewport;->setOffsetY(F)V

    invoke-virtual {v2, v1}, Lcom/voovio/voo3d/view/Viewport;->setWidth(I)V

    invoke-virtual {v2, v0}, Lcom/voovio/voo3d/view/Viewport;->setHeight(I)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v3, v2}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setViewport(Lcom/voovio/voo3d/view/Viewport;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/voovio/sweep/SweepView;->updateGLViewport(Z)V

    return-void
.end method

.method private updateGLViewport(Z)V
    .locals 2

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->updateViewportForCamera(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSetGLViewportRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->setGLViewport(Lcom/voovio/voo3d/view/Viewport;)V

    goto :goto_0
.end method

.method private updateScene()V
    .locals 14

    const v13, 0x3c8efa35

    const/4 v12, 0x0

    const/high16 v11, -0x40800000

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    if-nez v7, :cond_16

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    const/high16 v8, 0x447a0000

    div-float v0, v7, v8

    iget-boolean v7, p0, Lcom/voovio/sweep/SweepView;->m_bFastMove:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eqz v7, :cond_4

    :cond_0
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v7, v7, Lcom/voovio/sweep/Edge;->m_fValue:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    if-ne v7, v8, :cond_6

    :cond_2
    const/4 v3, 0x0

    iget-boolean v7, p0, Lcom/voovio/sweep/SweepView;->m_bFastMove:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v7, v7, Lcom/voovio/sweep/Edge;->m_nType:I

    if-nez v7, :cond_8

    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fFastMoveVelocityForward:F

    :cond_3
    :goto_1
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    mul-float/2addr v7, v3

    mul-float v2, v7, v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_2
    cmpl-float v7, v2, v10

    if-nez v7, :cond_c

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeAvailableDirections()V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraValues()V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeCurrentPosition()V

    :cond_4
    :goto_3
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    if-eq v7, v8, :cond_5

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oPositionChangedEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x2

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    iput v7, p0, Lcom/voovio/sweep/SweepView;->m_nLastPostedPosition:I

    :cond_5
    return-void

    :cond_6
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_7

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    if-ge v7, v4, :cond_7

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    iput v10, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    goto :goto_0

    :cond_7
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v11

    if-nez v7, :cond_1

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    goto :goto_0

    :cond_8
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fFastMoveVelocitySideward:F

    goto :goto_1

    :cond_9
    iget-boolean v7, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v7, v7, Lcom/voovio/sweep/Edge;->m_nType:I

    if-nez v7, :cond_a

    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    :goto_4
    goto :goto_1

    :cond_a
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    goto :goto_4

    :cond_b
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_f

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    if-ge v7, v4, :cond_f

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    iput v10, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    :cond_c
    :goto_5
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v7, v7, Lcom/voovio/sweep/Edge;->m_fValue:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    if-ne v7, v8, :cond_b

    :cond_d
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    if-ne v7, v8, :cond_10

    iput v10, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget-boolean v7, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oStopAutodriveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    iput-boolean v12, p0, Lcom/voovio/sweep/SweepView;->m_bFastMove:Z

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_f
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v11

    if-nez v7, :cond_c

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    if-lez v7, :cond_c

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    goto :goto_5

    :cond_10
    if-eqz v5, :cond_11

    iget v7, v5, Lcom/voovio/sweep/Edge;->m_nType:I

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v8, v8, Lcom/voovio/sweep/Edge;->m_nType:I

    if-ne v7, v8, :cond_12

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_12

    sub-float v7, v1, v9

    iget v8, v5, Lcom/voovio/sweep/Edge;->m_fValue:F

    mul-float v2, v7, v8

    :cond_11
    :goto_6
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v8, v8, Lcom/voovio/sweep/Edge;->m_fValue:F

    div-float v8, v2, v8

    add-float/2addr v7, v8

    iput v7, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_14

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_14

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    iput v10, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    goto/16 :goto_2

    :cond_12
    iget v7, v5, Lcom/voovio/sweep/Edge;->m_nType:I

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v8, v8, Lcom/voovio/sweep/Edge;->m_nType:I

    if-ne v7, v8, :cond_13

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_13

    iget v7, v5, Lcom/voovio/sweep/Edge;->m_fValue:F

    mul-float v2, v1, v7

    goto :goto_6

    :cond_13
    const/4 v2, 0x0

    goto :goto_6

    :cond_14
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    cmpl-float v7, v7, v11

    if-nez v7, :cond_15

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_15

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    iput v9, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    goto/16 :goto_2

    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_16
    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    if-ne v7, v8, :cond_17

    iput v12, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    goto/16 :goto_3

    :cond_17
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    invoke-virtual {v7, v8}, Lcom/voovio/voo3d/scenegraph/Camera3D;->addFov(F)V

    invoke-direct {p0, v12}, Lcom/voovio/sweep/SweepView;->updateGLViewport(Z)V

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v6

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v7, v7, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v7}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    mul-float/2addr v7, v13

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v7, v8}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    mul-float/2addr v7, v13

    sget-object v8, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v7, v8}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v8, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v9, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v10, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    invoke-static {v6}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    goto/16 :goto_3
.end method

.method private updateViewportForCamera(Lcom/voovio/voo3d/scenegraph/Camera3D;)V
    .locals 23

    invoke-virtual/range {p1 .. p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    int-to-float v0, v3

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v9, v18, v19

    int-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v10, v18, v19

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v4, v18, v19

    int-to-float v0, v3

    move/from16 v18, v0

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v5, v18, v19

    const/high16 v18, 0x3f000000

    int-to-float v0, v11

    move/from16 v19, v0

    mul-float v18, v18, v19

    const-wide/high16 v19, 0x3fe0000000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    div-float v6, v18, v19

    cmpg-float v18, v4, v5

    if-gez v18, :cond_1

    const/high16 v18, 0x40000000

    mul-float v18, v18, v6

    const-wide/high16 v19, 0x3fe0000000000000L

    float-to-double v0, v7

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v12, v0

    int-to-float v0, v2

    move/from16 v18, v0

    mul-float v18, v18, v4

    int-to-float v0, v2

    move/from16 v19, v0

    mul-float v18, v18, v19

    div-float v18, v18, v12

    move/from16 v0, v18

    float-to-int v14, v0

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    move v11, v2

    :goto_0
    sub-int v18, v3, v14

    div-int/lit8 v16, v18, 0x2

    sub-int v18, v2, v11

    div-int/lit8 v17, v18, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/voovio/voo3d/view/Viewport;->setOffsetX(F)V

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/voovio/voo3d/view/Viewport;->setOffsetY(F)V

    invoke-virtual {v13, v14}, Lcom/voovio/voo3d/view/Viewport;->setWidth(I)V

    invoke-virtual {v13, v11}, Lcom/voovio/voo3d/view/Viewport;->setHeight(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updatePerspectiveProjection()V

    :cond_0
    return-void

    :cond_1
    const/high16 v18, 0x40000000

    mul-float v18, v18, v6

    const-wide/high16 v19, 0x3fe0000000000000L

    float-to-double v0, v7

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    mul-float v18, v18, v4

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v15, v0

    mul-int v18, v3, v3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v19, v15, v4

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v11, v0

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v14, v3

    goto :goto_0
.end method


# virtual methods
.method public autodriveDirectional(I)Z
    .locals 11

    const/high16 v10, -0x40800000

    const v6, 0x7ffffffe

    const v5, -0x7fffffff

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-byte v9, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:B

    shr-int/lit8 v9, v9, 0x4

    int-to-byte v1, v9

    iget-byte v9, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:B

    and-int/lit8 v9, v9, 0xf

    int-to-byte v2, v9

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move v5, v8

    :goto_1
    return v5

    :pswitch_0
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v6}, Lcom/voovio/sweep/SweepView;->autodriveTo(I)Z

    goto :goto_0

    :pswitch_1
    and-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v5}, Lcom/voovio/sweep/SweepView;->autodriveTo(I)Z

    goto :goto_0

    :pswitch_2
    and-int/lit8 v9, v1, 0x4

    if-nez v9, :cond_3

    and-int/lit8 v9, v2, 0x4

    if-nez v9, :cond_3

    move v5, v7

    goto :goto_1

    :cond_3
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_6

    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    iget v7, v7, Lcom/voovio/sweep/Edge;->m_nIndex:I

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v9, v9, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-ge v7, v9, :cond_5

    :cond_4
    move v5, v6

    :cond_5
    invoke-virtual {p0, v5}, Lcom/voovio/sweep/SweepView;->autodriveTo(I)Z

    goto :goto_0

    :cond_6
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_7

    :goto_2
    invoke-virtual {p0, v6}, Lcom/voovio/sweep/SweepView;->autodriveTo(I)Z

    goto :goto_0

    :cond_7
    move v6, v5

    goto :goto_2

    :pswitch_3
    and-int/lit8 v9, v1, 0x8

    if-nez v9, :cond_8

    and-int/lit8 v9, v2, 0x8

    if-nez v9, :cond_8

    move v5, v7

    goto :goto_1

    :cond_8
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_b

    and-int/lit8 v7, v2, 0x8

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    iget v7, v7, Lcom/voovio/sweep/Edge;->m_nIndex:I

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v9, v9, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-ge v7, v9, :cond_a

    :cond_9
    move v5, v6

    :cond_a
    invoke-virtual {p0, v5}, Lcom/voovio/sweep/SweepView;->autodriveTo(I)Z

    goto :goto_0

    :cond_b
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_c

    :goto_3
    invoke-virtual {p0, v6}, Lcom/voovio/sweep/SweepView;->autodriveTo(I)Z

    goto :goto_0

    :cond_c
    move v6, v5

    goto :goto_3

    :pswitch_4
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_d

    move v5, v7

    goto :goto_1

    :cond_d
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    const/4 v3, 0x0

    :cond_e
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getNextKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B

    move-result v0

    shr-int/lit8 v5, v0, 0x4

    int-to-byte v1, v5

    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_f

    const/4 v3, 0x1

    :cond_f
    if-eqz v4, :cond_10

    if-eqz v3, :cond_e

    :cond_10
    if-eqz v4, :cond_0

    const/high16 v5, 0x3f800000

    iput v5, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    invoke-direct {p0, v8}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    goto/16 :goto_0

    :pswitch_5
    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_11

    move v5, v7

    goto/16 :goto_1

    :cond_11
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    const/4 v3, 0x0

    :cond_12
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getPrevKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B

    move-result v0

    and-int/lit8 v5, v0, 0xf

    int-to-byte v2, v5

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_13

    const/4 v3, 0x1

    :cond_13
    if-eqz v4, :cond_14

    if-eqz v3, :cond_12

    :cond_14
    if-eqz v4, :cond_0

    iput v10, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    invoke-direct {p0, v8}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    goto/16 :goto_0

    :pswitch_6
    and-int/lit8 v5, v1, 0x4

    if-nez v5, :cond_15

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_15

    move v5, v7

    goto/16 :goto_1

    :cond_15
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    const/4 v3, 0x0

    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_17

    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    iget v5, v5, Lcom/voovio/sweep/Edge;->m_nIndex:I

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v6, v6, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-ge v5, v6, :cond_1b

    :cond_16
    const/4 v1, 0x4

    const/4 v2, 0x0

    :cond_17
    :goto_4
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1c

    :cond_18
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getNextKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B

    move-result v0

    shr-int/lit8 v5, v0, 0x4

    int-to-byte v1, v5

    and-int/lit8 v5, v1, 0x4

    if-nez v5, :cond_19

    const/4 v3, 0x1

    :cond_19
    if-eqz v4, :cond_1a

    if-eqz v3, :cond_18

    :cond_1a
    if-eqz v4, :cond_0

    const/high16 v5, 0x3f800000

    iput v5, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    invoke-direct {p0, v8}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    goto/16 :goto_0

    :cond_1b
    const/4 v1, 0x0

    const/4 v2, 0x4

    goto :goto_4

    :cond_1c
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getPrevKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B

    move-result v0

    and-int/lit8 v5, v0, 0xf

    int-to-byte v2, v5

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_1d

    const/4 v3, 0x1

    :cond_1d
    if-eqz v4, :cond_1e

    if-eqz v3, :cond_1c

    :cond_1e
    if-eqz v4, :cond_0

    iput v10, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    invoke-direct {p0, v8}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    goto/16 :goto_0

    :pswitch_7
    and-int/lit8 v5, v1, 0x8

    if-nez v5, :cond_1f

    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_1f

    move v5, v7

    goto/16 :goto_1

    :cond_1f
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    const/4 v3, 0x0

    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_21

    and-int/lit8 v5, v2, 0x8

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    iget v5, v5, Lcom/voovio/sweep/Edge;->m_nIndex:I

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v6, v6, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-ge v5, v6, :cond_25

    :cond_20
    const/16 v1, 0x8

    const/4 v2, 0x0

    :cond_21
    :goto_5
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    :cond_22
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getNextKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v4

    if-eqz v4, :cond_23

    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B

    move-result v0

    shr-int/lit8 v5, v0, 0x4

    int-to-byte v1, v5

    and-int/lit8 v5, v1, 0x8

    if-nez v5, :cond_23

    const/4 v3, 0x1

    :cond_23
    if-eqz v4, :cond_24

    if-eqz v3, :cond_22

    :cond_24
    if-eqz v4, :cond_0

    const/high16 v5, 0x3f800000

    iput v5, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    invoke-direct {p0, v8}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    goto/16 :goto_0

    :cond_25
    const/4 v1, 0x0

    const/16 v2, 0x8

    goto :goto_5

    :cond_26
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getPrevKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->getAvailableDirectionsForEdge(Lcom/voovio/sweep/Edge;)B

    move-result v0

    and-int/lit8 v5, v0, 0xf

    int-to-byte v2, v5

    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_27

    const/4 v3, 0x1

    :cond_27
    if-eqz v4, :cond_28

    if-eqz v3, :cond_26

    :cond_28
    if-eqz v4, :cond_0

    iput v10, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    invoke-direct {p0, v8}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public autodriveTo(I)Z
    .locals 9

    const/4 v6, 0x1

    const/high16 v3, 0x3f800000

    const/high16 v4, -0x40800000

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v7, :cond_0

    move v3, v5

    :goto_0
    return v3

    :cond_0
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Edge;

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Edge;

    const v7, 0x7ffffffe

    if-ne p1, v7, :cond_1

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eq v7, v0, :cond_1

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    invoke-direct {p0, v3}, Lcom/voovio/sweep/SweepView;->getNextKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v3

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    :goto_1
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-ne v3, v4, :cond_8

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    move v3, v5

    goto :goto_0

    :cond_1
    const v7, -0x7fffffff

    if-ne p1, v7, :cond_2

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eq v7, v1, :cond_2

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    invoke-direct {p0, v3}, Lcom/voovio/sweep/SweepView;->getPrevKeyEdge(Lcom/voovio/sweep/Edge;)Lcom/voovio/sweep/Edge;

    move-result-object v3

    iput-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    goto :goto_1

    :cond_2
    const v7, 0x7fffffff

    if-ne p1, v7, :cond_3

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eq v7, v0, :cond_3

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    goto :goto_1

    :cond_3
    const/high16 v7, -0x80000000

    if-ne p1, v7, :cond_4

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eq v7, v1, :cond_4

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    iput-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    goto :goto_1

    :cond_4
    if-ltz p1, :cond_7

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v7}, Lcom/voovio/sweep/Sweep;->size()I

    move-result v7

    if-ge p1, v7, :cond_7

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Edge;

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-ne v2, v7, :cond_5

    move v3, v5

    goto :goto_0

    :cond_5
    iget v7, v2, Lcom/voovio/sweep/Edge;->m_nIndex:I

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget v8, v8, Lcom/voovio/sweep/Edge;->m_nIndex:I

    if-le v7, v8, :cond_6

    :goto_2
    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_2

    :cond_7
    move v3, v5

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v6}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    move v3, v6

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->onPause()V

    :cond_0
    iput-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_4

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    invoke-virtual {v3, v6}, Lcom/voovio/sweep/VoovioGeometry;->DestroyVertexBuffer(Z)V

    :cond_1
    invoke-virtual {p0, v5}, Lcom/voovio/sweep/SweepView;->setSweep(Lcom/voovio/sweep/Sweep;)V

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v3}, Lcom/voovio/sweep/SweepOffScreen;->dispose()V

    iput-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    :cond_2
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v3}, Lcom/voovio/sweep/ResourceManager;->dispose()V

    iput-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    iget v3, v2, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v3, v4, :cond_5

    invoke-virtual {v2, v6}, Lcom/voovio/sweep/Voovio;->DestroyHighResTexture(Z)V

    invoke-virtual {v2, v6}, Lcom/voovio/sweep/Voovio;->DestroyLowResTexture(Z)V

    sget v3, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v3, v2, Lcom/voovio/sweep/Voovio;->m_nState:I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public drawAlphaGradientStrip(Lcom/voovio/sweep/Voovio;[FIII)V
    .locals 7

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p1, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    if-eqz v0, :cond_0

    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    :goto_0
    if-nez v6, :cond_1

    :goto_1
    return-void

    :cond_0
    iget v6, p1, Lcom/voovio/sweep/Voovio;->m_nLowResTextureID:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aAuxMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_2:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aAuxMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iP1Loc_2:I

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iP2Loc_2:I

    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iInvGradLoc_2:I

    invoke-static {v0, p5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_2:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_2:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_2:I

    const/4 v1, 0x1

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_2:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_2:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x18

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_2:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_2:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x18

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 v0, 0x1

    if-ne p5, v0, :cond_2

    add-int/lit8 p3, p3, -0xc

    :goto_2
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, p3, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x5

    sub-int v1, p4, p3

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v3, v3, Lcom/voovio/sweep/VoovioGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto/16 :goto_1

    :cond_2
    add-int/lit8 p4, p4, 0xc

    goto :goto_2
.end method

.method public drawTransitionOverlappingArea(Lcom/voovio/sweep/Voovio;FLcom/voovio/sweep/Transition;)V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    move-object/from16 v0, p1

    iget v1, v0, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    move/from16 v18, v0

    :goto_0
    if-nez v18, :cond_1

    :goto_1
    return-void

    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_nLowResTextureID:I

    move/from16 v18, v0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_3:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, v4, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v1, v1, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/VoovioGeometry;->Clip([F)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v1, v1, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget v0, v1, Lcom/voovio/sweep/VoovioGeometry;->m_nSlices:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    iget v1, v0, Lcom/voovio/sweep/Transition;->m_fOverlapping:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v13, v1

    const/high16 v11, 0x3f000000

    const/high16 v12, 0x3f000000

    move-object/from16 v0, p3

    iget v1, v0, Lcom/voovio/sweep/Transition;->m_fTurnDirection:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L

    cmpl-double v1, v1, v3

    if-nez v1, :cond_4

    add-int/lit8 v1, v17, 0x1

    sub-int v15, v1, v13

    add-int/lit8 v16, v17, 0x1

    cmpg-float v1, p2, v11

    if-gtz v1, :cond_2

    const/high16 v9, 0x3f800000

    const/high16 v1, 0x3f800000

    div-float v2, p2, v11

    sub-float v10, v1, v2

    :goto_2
    sub-float v1, v10, v9

    sub-int v2, v16, v15

    int-to-float v2, v2

    div-float v7, v1, v2

    int-to-float v1, v15

    mul-float/2addr v1, v7

    sub-float v8, v9, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_iP1Loc_3:I

    invoke-static {v1, v15}, Landroid/opengl/GLES20;->glUniform1i(II)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_iP2Loc_3:I

    move/from16 v0, v16

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_iALoc_3:I

    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_iBLoc_3:I

    invoke-static {v1, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    move/from16 v0, v18

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_3:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_3:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_3:I

    const/4 v2, 0x1

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_3:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_3:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x18

    const/4 v6, 0x4

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_3:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_3:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x18

    const/16 v6, 0x10

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const v1, 0xffff

    and-int v15, v14, v1

    shr-int/lit8 v16, v14, 0x10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v1, v1, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v1, v1, Lcom/voovio/sweep/VoovioGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v2, v15, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x5

    sub-int v2, v16, v15

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    const/16 v3, 0x1403

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v4, v4, Lcom/voovio/sweep/VoovioGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto/16 :goto_1

    :cond_2
    cmpl-float v1, p2, v11

    if-lez v1, :cond_3

    cmpg-float v1, p2, v12

    if-gtz v1, :cond_3

    const/high16 v9, 0x3f800000

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_3
    const/high16 v1, 0x3f800000

    sub-float v2, p2, v12

    const/high16 v3, 0x3f800000

    sub-float/2addr v3, v12

    div-float/2addr v2, v3

    sub-float v9, v1, v2

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v15, 0x0

    add-int/lit8 v16, v13, -0x1

    cmpg-float v1, p2, v11

    if-gtz v1, :cond_5

    const/high16 v1, 0x3f800000

    div-float v2, p2, v11

    sub-float v9, v1, v2

    const/high16 v10, 0x3f800000

    goto/16 :goto_2

    :cond_5
    cmpl-float v1, p2, v11

    if-lez v1, :cond_6

    cmpg-float v1, p2, v12

    if-gtz v1, :cond_6

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000

    goto/16 :goto_2

    :cond_6
    const/4 v9, 0x0

    const/high16 v1, 0x3f800000

    sub-float v2, p2, v12

    const/high16 v3, 0x3f800000

    sub-float/2addr v3, v12

    div-float/2addr v2, v3

    sub-float v10, v1, v2

    goto/16 :goto_2
.end method

.method public drawVoovioWithAlpha(Lcom/voovio/sweep/Voovio;F[F)V
    .locals 10

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p1, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    if-eqz v0, :cond_0

    iget v9, p1, Lcom/voovio/sweep/Voovio;->m_nHighResTextureID:I

    :goto_0
    if-nez v9, :cond_1

    :goto_1
    return-void

    :cond_0
    iget v9, p1, Lcom/voovio/sweep/Voovio;->m_nLowResTextureID:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aAuxMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_1:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aAuxMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_aAuxMatrix:[F

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/VoovioGeometry;->Clip([F)I

    move-result v6

    :goto_2
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iAlphaLoc_1:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_1:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_1:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_1:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x18

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_1:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_1:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x18

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const v0, 0xffff

    and-int v7, v6, v0

    shr-int/lit8 v8, v6, 0x10

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v0, v0, Lcom/voovio/sweep/VoovioGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, v7, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x5

    sub-int v1, v8, v7

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v3, v3, Lcom/voovio/sweep/VoovioGeometry;->m_sbIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto/16 :goto_1

    :cond_2
    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_1:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v3, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, v1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aVPMatrix:[F

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/VoovioGeometry;->Clip([F)I

    move-result v6

    goto :goto_2
.end method

.method public enabledMipMaps(Z)V
    .locals 0

    sput-boolean p1, Lcom/voovio/sweep/Voovio;->MIPMAPS:Z

    return-void
.end method

.method public enabledPOTTextures(Z)V
    .locals 0

    sput-boolean p1, Lcom/voovio/sweep/Sweep;->POT_TEXTURES:Z

    return-void
.end method

.method public fastMoveToNearestImage()V
    .locals 5

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    const/high16 v4, 0x3f000000

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    const/high16 v2, -0x40800000

    iput v2, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget-object v2, v2, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget v1, v2, Lcom/voovio/sweep/Voovio;->m_nId:I

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Edge;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/voovio/sweep/SweepView;->m_bFastMove:Z

    :cond_0
    monitor-exit v3

    return-void

    :cond_1
    const/high16 v2, 0x3f800000

    iput v2, p0, Lcom/voovio/sweep/SweepView;->m_fMoveDirection:F

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v2, v2, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget-object v2, v2, Lcom/voovio/sweep/Node;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget v0, v2, Lcom/voovio/sweep/Voovio;->m_nId:I

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Edge;

    iput-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oMoveTargetEdge:Lcom/voovio/sweep/Edge;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAutodrive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bAutoDrive:Z

    return v0
.end method

.method public getImagePositions()[I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    new-array v0, v2, [I

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lt v1, v3, :cond_0

    add-int/lit8 v4, v2, -0x1

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_nPosition:I

    aput v3, v0, v4

    :goto_1
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_nPosition:I

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [I

    aput v5, v0, v5

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Edge;

    iget-object v3, v3, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v3, v3, Lcom/voovio/sweep/Node;->m_nPosition:I

    aput v3, v0, v4

    goto :goto_1
.end method

.method public getMaxPosition()I
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    return v0
.end method

.method public getNextFrame()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getNextFrameAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->getNextFrameAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getNextFrameAsByteBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0, p1}, Lcom/voovio/sweep/SweepOffScreen;->getNextFrameAsByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public getSweep()Lcom/voovio/sweep/Sweep;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    return-object v0
.end method

.method public getTotalNumberOfFrames()I
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->getTotalNumberOfFrames()I

    move-result v0

    return v0
.end method

.method public getZoomInFov()F
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    return v0
.end method

.method public hasAutodrive()Z
    .locals 2

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToImage(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_aKeyEdges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Edge;

    iget v0, v0, Lcom/voovio/sweep/Edge;->m_nIndex:I

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeAvailableDirections()V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v0, v0, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v0, v0, Lcom/voovio/sweep/Node;->m_nPosition:I

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraValues()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public moveToPosition(I)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v5, :cond_0

    if-ltz p1, :cond_0

    iget v5, p0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    if-le p1, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v7}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    iput v7, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    iget v5, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v5, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraViewport()V

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    invoke-interface {v5, v7}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    :cond_2
    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I

    if-ne p1, v6, :cond_6

    add-int/lit8 v1, v2, -0x1

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Edge;

    :cond_3
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    if-eq v6, v3, :cond_4

    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepView;->setCurrentEdge(I)V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oPrevEdge:Lcom/voovio/sweep/Edge;

    :cond_4
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v6, v6, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v6, v6, Lcom/voovio/sweep/Node;->m_nPosition:I

    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v7, v7, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v7, v7, Lcom/voovio/sweep/Node;->m_nPosition:I

    sub-int/2addr v6, v7

    int-to-float v0, v6

    cmpl-float v6, v0, v4

    if-eqz v6, :cond_5

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    iget-object v4, v4, Lcom/voovio/sweep/Edge;->m_oNode0:Lcom/voovio/sweep/Node;

    iget v4, v4, Lcom/voovio/sweep/Node;->m_nPosition:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    :cond_5
    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computeAvailableDirections()V

    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraValues()V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_6
    const/4 v1, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Edge;

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v6, v3, Lcom/voovio/sweep/Edge;->m_oNode1:Lcom/voovio/sweep/Node;

    iget v6, v6, Lcom/voovio/sweep/Node;->m_nPosition:I

    if-le p1, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_aEdges:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Edge;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    iget-wide v3, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    sub-long v3, v0, v3

    long-to-float v2, v3

    :goto_0
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    const/high16 v4, 0x421c0000

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    const/high16 v4, 0x42200000

    div-float/2addr v3, v4

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    iget v5, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    sub-float/2addr v4, v5

    const v5, 0x3dcccccd

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iput-wide v0, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    iget-boolean v3, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/voovio/sweep/ResourceManager;->loop(Z)V

    :cond_0
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateScene()V

    invoke-direct {p0, p1}, Lcom/voovio/sweep/SweepView;->drawScene(Ljavax/microedition/khronos/opengles/GL10;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    invoke-direct {p0, v2}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    const/high16 v0, 0x418c0000

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_smoothedDeltaRealTime_ms:F

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_movAverageDeltaTime_ms:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/voovio/sweep/SweepView;->m_lastRealTimeMeasurement_ms:J

    iput v2, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    iput-boolean v2, p0, Lcom/voovio/sweep/SweepView;->m_bResumed:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voovio/sweep/SweepView;->m_bResumed:Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->updateCameraViewport()V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, v2, v3}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    const/4 v2, 0x0

    const/16 v1, 0x901

    invoke-static {v1}, Landroid/opengl/GLES20;->glFrontFace(I)V

    const/high16 v1, 0x3f800000

    invoke-static {v2, v2, v2, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_strVShader1:Ljava/lang/String;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_strFShader:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/voovio/gles/ShaderHelper;->LoadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    const-string v2, "a_vertex"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_1:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    const-string v2, "a_uvcoords"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_1:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    const-string v2, "u_MVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_1:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    const-string v2, "u_alpha"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iAlphaLoc_1:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg1Id:I

    const-string v2, "u_texId"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_1:I

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_strVShader2:Ljava/lang/String;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_strFShader:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/voovio/gles/ShaderHelper;->LoadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "a_position"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_2:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "a_vertex"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_2:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "a_uvcoords"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_2:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "u_MVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_2:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "u_p1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iP1Loc_2:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "u_p2"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iP2Loc_2:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "u_inverseGradient"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iInvGradLoc_2:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "u_texId"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_2:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg2Id:I

    const-string v2, "u_alphaGradient"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fbAlphaGradient:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_strVShader3:Ljava/lang/String;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_strFShader:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/voovio/gles/ShaderHelper;->LoadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "a_position"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iPositionLoc_3:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "a_vertex"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iVertexLoc_3:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "a_uvcoords"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iUVCoordsLoc_3:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "u_MVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iMatrixLoc_3:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "u_p1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iP1Loc_3:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "u_p2"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iP2Loc_3:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "u_a"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iALoc_3:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "u_b"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iBLoc_3:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "u_texId"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/voovio/sweep/SweepView;->m_iTexLoc_3:I

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_iProg3Id:I

    const-string v2, "u_alphaGradient"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/voovio/sweep/SweepView;->GRADIENT_SIZE:I

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_fbAlphaGradient:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v1, v1, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    invoke-virtual {v1}, Lcom/voovio/sweep/VoovioGeometry;->CreateVertexBuffer()V

    iget-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_nHighResSampleSize:I

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oBitmapPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v3, v4, v5}, Lcom/voovio/sweep/Sweep;->createHighResTextures(Lcom/voovio/sweep/ResourceManager;ILandroid/graphics/Bitmap$Config;)V

    :goto_0
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bFirstDraw:Z

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->start()V

    :cond_0
    :goto_1
    monitor-exit v2

    return-void

    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_nLowResSampleSize:I

    invoke-virtual {v1, v3, v4}, Lcom/voovio/sweep/Sweep;->createLowResTextures(Lcom/voovio/sweep/ResourceManager;I)V

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v1}, Lcom/voovio/sweep/ResourceManager;->fillTexturePool()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepView;->updateGLViewport(Z)V

    iget-boolean v1, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v1, v3}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public preloadSweepImages(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImages:Z

    return-void
.end method

.method public preloadSweepImagesOnGPU(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    return-void
.end method

.method public restore()V
    .locals 2

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/voovio/sweep/SweepView$9;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/SweepView$9;-><init>(Lcom/voovio/sweep/SweepView;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setAutodriveOnStart(I)V
    .locals 0

    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_nAutodriveOnStart:I

    return-void
.end method

.method public setAutodriveVelocity(FF)V
    .locals 0

    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    iput p2, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    return-void
.end method

.method public setBitmapPreferredConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 1

    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oBitmapPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/voovio/sweep/ResourceManager;->setBitmapPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public setCameraDisplacements(FF)V
    .locals 11

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v10

    const/high16 v0, 0x40000000

    :try_start_0
    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, v1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    const-wide/high16 v1, 0x3fe0000000000000L

    iget-object v3, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v3}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v8, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v9, v8, v0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    mul-float v6, p1, v9

    mul-float v7, p2, v9

    invoke-virtual/range {v0 .. v7}, Lcom/voovio/sweep/FrustumLimiter;->Test(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;FFFFF)Z

    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCameraZoomIncrement(FFF)V
    .locals 12

    const v11, 0x42652ee0

    const v10, 0x3c8efa35

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpl-float v6, p1, v9

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    cmpl-float v6, p1, v9

    if-gtz v6, :cond_0

    :cond_2
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v7, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    cmpg-float v6, p1, v9

    if-ltz v6, :cond_0

    :cond_3
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget v3, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    const v8, 0x3dcccccd

    mul-float/2addr v8, p1

    add-float/2addr v6, v8

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_a

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    invoke-virtual {v6, v8}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/voovio/sweep/SweepView;->updateGLViewport(Z)V

    cmpl-float v6, p1, v9

    if-lez v6, :cond_7

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/voovio/sweep/SweepView;->getCurrentCameraDirection(Lcom/voovio/voo3d/data/Vector3;)V

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v5, v8}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    mul-float v0, v6, v11

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v8, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v5, v8}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    mul-float v1, v6, v11

    cmpl-float v6, v0, v9

    if-nez v6, :cond_5

    cmpl-float v6, v1, v9

    if-eqz v6, :cond_6

    :cond_5
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    sub-float/2addr v6, v3

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    sub-float/2addr v8, v3

    div-float v2, v6, v8

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v4

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    mul-float v6, v2, v0

    mul-float/2addr v6, v10

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v6, v8}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    mul-float v6, v2, v1

    mul-float/2addr v6, v10

    sget-object v8, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v6, v8}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v8, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v9, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v10, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v11, 0x1

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    invoke-static {v4}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    :cond_6
    invoke-static {v5}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    :cond_7
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v6, v8, v9}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v3, v6

    if-nez v6, :cond_8

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    :cond_8
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    :cond_9
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_a
    :try_start_1
    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_4

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public setImageProvider(Lcom/voovio/sweep/ImageProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/voovio/sweep/ResourceManager;->setImageProvider(Lcom/voovio/sweep/ImageProvider;)V

    return-void
.end method

.method public setImageSampleSize(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_nHighResSampleSize:I

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-static {p1}, Lcom/voovio/util/ConversionUtil;->PreviousPowerOfTwo(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setImageSampleSize(I)V

    :cond_0
    return-void
.end method

.method public setLowResSampleSize(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    invoke-static {p1}, Lcom/voovio/util/ConversionUtil;->PreviousPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/voovio/sweep/SweepView;->m_nLowResSampleSize:I

    :cond_0
    return-void
.end method

.method public setOnSweepViewListener(Lcom/voovio/sweep/SweepView$OnSweepViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    return-void
.end method

.method public setSweep(Lcom/voovio/sweep/Sweep;)V
    .locals 9

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-ne v4, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v4}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    const/4 v4, 0x0

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/4 v4, 0x0

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCurEdge:Lcom/voovio/sweep/Edge;

    const/4 v4, -0x1

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_nCurEdgeIndex:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurEdgeFactor:F

    const/4 v4, 0x0

    iput-byte v4, p0, Lcom/voovio/sweep/SweepView;->m_bAvailableDirections:B

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    new-instance v6, Lcom/voovio/sweep/SweepView$7;

    invoke-direct {v6, p0, v2}, Lcom/voovio/sweep/SweepView$7;-><init>(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Sweep;)V

    invoke-virtual {v4, v6}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    iput-object p1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-boolean v4, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImagesOnGPU:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/voovio/sweep/SweepView;->m_bPreloadImages:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-lt v0, v1, :cond_6

    :cond_2
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v4, v6}, Lcom/voovio/sweep/ResourceManager;->setSweep(Lcom/voovio/sweep/Sweep;)V

    :cond_3
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v4, v6}, Lcom/voovio/sweep/FrustumLimiter;->Init(Lcom/voovio/sweep/Sweep;)V

    iget-boolean v4, p0, Lcom/voovio/sweep/SweepView;->m_bGLViewReady:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    new-instance v6, Lcom/voovio/sweep/SweepView$8;

    invoke-direct {v6, p0}, Lcom/voovio/sweep/SweepView$8;-><init>(Lcom/voovio/sweep/SweepView;)V

    invoke-virtual {v4, v6}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    iget v4, v3, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iget v4, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v4, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    invoke-virtual {v4, v6}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    invoke-direct {p0}, Lcom/voovio/sweep/SweepView;->computePath()V

    :cond_5
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    iget v4, v3, Lcom/voovio/sweep/Voovio;->m_baSize:I

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    iget-object v4, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v4, v4, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v6, v6, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    iget-object v7, v3, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    iget v8, v3, Lcom/voovio/sweep/Voovio;->m_nId:I

    invoke-virtual {v4, v6, v7, v8}, Lcom/voovio/sweep/ImageProvider;->getImageDataByIndex(Ljava/lang/String;[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setZoomInFov(F)V
    .locals 0

    iput p1, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    return-void
.end method

.method public startRequestingFrames(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    new-instance v0, Lcom/voovio/sweep/SweepOffScreen;

    iget-object v5, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/voovio/sweep/SweepOffScreen;-><init>(IIIILcom/voovio/sweep/ResourceManager;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    iget v1, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocityForward:F

    iget v2, p0, Lcom/voovio/sweep/SweepView;->m_fAutodriveVelocitySideward:F

    invoke-virtual {v0, v1, v2}, Lcom/voovio/sweep/SweepOffScreen;->setAutodriveVelocity(FF)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v1}, Lcom/voovio/sweep/Sweep;->clone()Lcom/voovio/sweep/Sweep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/SweepOffScreen;->setSweep(Lcom/voovio/sweep/Sweep;)V

    goto :goto_0
.end method

.method public stopAutodrive()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    return-void
.end method

.method public stopRequestingFrames()V
    .locals 2

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/SweepOffScreen;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oSweepOffScreen:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setSweep(Lcom/voovio/sweep/Sweep;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    iget-object v0, p0, Lcom/voovio/sweep/SweepView;->m_oGLView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public toogleZoomLevel(FF)V
    .locals 14

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/voovio/sweep/SweepView;->m_oRenderLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v0, v6

    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v5

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_4

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_2

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v8, v6

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    float-to-double v10, v6

    const-wide v12, 0x400921fb54442d18L

    mul-double/2addr v10, v12

    const-wide v12, 0x4076800000000000L

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v6, v8

    div-float v2, v6, v0

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v6, v6

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->x:F

    div-float v4, v6, v8

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v6, v4

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v8, v4

    const/high16 v9, 0x40000000

    div-float v9, v0, v9

    sub-float v9, v9, p2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v9, v9, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v9, v9, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v9, v4

    const/high16 v10, 0x40000000

    div-float v10, v1, v10

    sub-float v10, p1, v10

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    invoke-virtual {v5, v6, v8, v9}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    invoke-virtual {v5}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    :goto_1
    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v6}, Lcom/voovio/voo3d/scenegraph/Camera3D;->Clone()Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-result-object v3

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    invoke-virtual {v3, v6}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    iget v6, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v9, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x1

    invoke-virtual {v3, v6, v8, v9, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    invoke-direct {p0, v3}, Lcom/voovio/sweep/SweepView;->updateViewportForCamera(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v6, v3, v8}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    iget-object v6, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    const/16 v6, 0x8

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v8}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v8

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fFovStep:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v8, v8, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v5, v8}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    const v8, 0x42652ee0

    mul-float/2addr v6, v8

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepX:F

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v6, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v8, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6, v5, v8}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    const v8, 0x42652ee0

    mul-float/2addr v6, v8

    iget v8, p0, Lcom/voovio/sweep/SweepView;->m_nZoomSteps:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fAngleStepY:F

    invoke-static {v5}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    const/4 v6, 0x0

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_nZoomCurStep:I

    const/4 v6, 0x1

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_nOperation:I

    iget-object v6, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    if-eqz v6, :cond_3

    iget-object v8, p0, Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F

    iget v9, p0, Lcom/voovio/sweep/SweepView;->m_fMinFOV:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_5

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v8, v6}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onZoomStateChanged(Z)V

    :cond_3
    monitor-exit v7

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v5}, Lcom/voovio/sweep/SweepView;->getCurrentCameraDirection(Lcom/voovio/voo3d/data/Vector3;)V

    iget v6, p0, Lcom/voovio/sweep/SweepView;->m_fMaxFOV:F

    iput v6, p0, Lcom/voovio/sweep/SweepView;->m_fCurFOV:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method
