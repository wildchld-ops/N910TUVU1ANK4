.class public Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLDualMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;


# static fields
.field private static final DUAL_ASYNC_FRONT_ICON_POS_X:I

.field private static final DUAL_FRONT_PROGRESS_BAR_POS_HEIGHT:I

.field private static final DUAL_FRONT_PROGRESS_BAR_POS_WIDTH:I

.field private static final DUAL_FRONT_PROGRESS_BAR_POS_X:I

.field private static final DUAL_FRONT_PROGRESS_BAR_POS_Y:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_HEIGHT:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_WIDTH:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_X:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_X_180:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_X_270:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_X_90:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_Y:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_Y_180:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_Y_270:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_Y_90:I

.field protected static final DUAL_PROGRESS_TIMER_MSG:I = 0x2

.field protected static final DUAL_PROGRESS_UPDATE_TIME:I = 0xc8

.field private static final DUAL_REAR_PROGRESS_BAR_POS_HEIGHT:I

.field private static final DUAL_REAR_PROGRESS_BAR_POS_WIDTH:I

.field private static final DUAL_REAR_PROGRESS_BAR_POS_X:I

.field private static final DUAL_REAR_PROGRESS_BAR_POS_Y:I

.field private static final DUAL_TRACKING_BUTTON_POS_X:I

.field private static final DUAL_TRACKING_BUTTON_POS_Y:I

.field private static final HANDLER_AREA_PADDING:I

.field protected static final HIDE_BOUNDRY:I = 0x1

.field public static final HIDE_TIMEOUT:I = 0xbb8

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field protected static final SHOW_BOUNDRY:I = 0x3

.field public static final SHOW_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "TwGLDualMenu"


# instance fields
.field private mAsyncFront:Lcom/sec/android/glview/TwGLImage;

.field private mAsyncRear:Lcom/sec/android/glview/TwGLImage;

.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

.field private mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field protected mDualMsgHandler:Landroid/os/Handler;

.field private mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mDual_splitview_height:I

.field private mDual_splitview_start_posX:I

.field private mDual_splitview_start_posY:I

.field private mDual_splitview_width:I

.field private mEffectSizeRatio:F

.field private mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

.field private mGluePointInfo:[F

.field private mHandler_area_bottom_boundary:I

.field private mHandler_area_left_boundary:I

.field private mHandler_area_right_boundary:I

.field private mHandler_area_top_boundary:I

.field private mHeightOffsetForhandle:I

.field private mInvisible:Z

.field private mNeedToOrientation:Z

.field private mOrientation:I

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPreviousEffect:I

.field private mRectinfo:[Landroid/graphics/RectF;

.field private mShowEditableShortMenu:Z

.field private mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

.field private mTrackingStart:Z

.field private mWidthOffsetForhandle:I

.field private mX:[F

.field private mY:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_WIDTH:I

    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_HEIGHT:I

    const v0, 0x7f0a01a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    const v0, 0x7f0a0227

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X:I

    const v0, 0x7f0a0228

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y:I

    const v0, 0x7f0a0229

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_WIDTH:I

    const v0, 0x7f0a022a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_HEIGHT:I

    const v0, 0x7f0a022b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_ASYNC_FRONT_ICON_POS_X:I

    const v0, 0x7f0a022c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_X:I

    const v0, 0x7f0a022d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_Y:I

    const v0, 0x7f0a022e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_WIDTH:I

    const v0, 0x7f0a022f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_HEIGHT:I

    const v0, 0x7f0a0230

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_X:I

    const v0, 0x7f0a0231

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_Y:I

    const v0, 0x7f0a0232

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_WIDTH:I

    const v0, 0x7f0a0233

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_HEIGHT:I

    const v0, 0x7f0a0234

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_90:I

    const v0, 0x7f0a0235

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_90:I

    const v0, 0x7f0a0236

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_180:I

    const v0, 0x7f0a0237

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_180:I

    const v0, 0x7f0a0238

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_270:I

    const v0, 0x7f0a0239

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_270:I

    const v0, 0x7f0a023c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_TRACKING_BUTTON_POS_X:I

    const v0, 0x7f0a023d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_TRACKING_BUTTON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # I
    .param p3    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4    # Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_top_boundary:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_HEIGHT:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const v0, 0x7f0a0219

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    const v0, 0x7f0a021a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    const v0, 0x7f0a0217

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posX:I

    const v0, 0x7f0a0218

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posY:I

    const/16 v0, 0xb

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mNeedToOrientation:Z

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    const/16 v0, 0x2a

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mShowEditableShortMenu:Z

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->loadDualEffectPositionFromPreference()V

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->calulateCoordinateForNormalPreviewRatio()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setCaptureEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->readEffectRectinfo()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/high16 v1, -0x3e600000

    const/high16 v2, -0x3e600000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxBound()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDragVibration(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/high16 v1, -0x3e600000

    const/high16 v2, -0x3e600000

    const/high16 v3, -0x3e600000

    const/high16 v4, -0x3e600000

    const/high16 v5, -0x3e600000

    const/high16 v6, -0x3e600000

    const/high16 v7, -0x3e600000

    const/high16 v8, -0x3e600000

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setPosition(FFFFFFFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setonQuadHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setDragVibration(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->hideBoundryRect()V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020006

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mAsyncRear:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_ASYNC_FRONT_ICON_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const v4, 0x7f020005

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mAsyncFront:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02039a

    const v7, 0x7f020399

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02039a

    const v7, 0x7f020399

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_90:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_90:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_180:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_180:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_270:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_270:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mAsyncRear:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mAsyncFront:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getDualHandlerOffset()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_TRACKING_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_TRACKING_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02034b

    const v5, 0x7f02034d

    const v6, 0x7f02034c

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0095

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setOrientationChanged(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setOrientationListener()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setTouchHandled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/glview/TwGLProgressBar;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/glview/TwGLProgressBar;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    return-object v0
.end method

.method private canRestoreDualEffectRectPosition()Z
    .locals 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v11, 0x33

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopX()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightTopX()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomX()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomX()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v6

    float-to-int v1, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopY()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightTopY()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomY()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomY()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v6

    float-to-int v2, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopX()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightTopX()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomX()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomX()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v6

    float-to-int v6, v6

    sub-int v3, v6, v1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopY()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightTopY()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomY()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomY()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v6

    float-to-int v6, v6

    sub-int v0, v6, v2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v6

    if-eq v6, v11, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectWidth()I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectHeight()I

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v6

    if-ne v6, v11, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightTopX()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomX()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomX()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomX()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomX()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomY()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomX()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomY()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomX()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomY()I

    move-result v7

    if-ne v6, v7, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v6

    if-ne v6, v11, :cond_3

    if-lez v3, :cond_3

    if-gtz v0, :cond_0

    :cond_3
    move v4, v5

    goto/16 :goto_0
.end method

.method private getRectIndex(I)I
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private readEffectRectinfo()V
    .locals 13

    const/4 v12, 0x0

    const v11, 0x7f0a0206

    const v10, 0x7f0a0205

    const v9, 0x7f0a0204

    const v8, 0x7f0a0203

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v1, v0, v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a0207

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a0208

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a0209

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a020a

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a020b

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a020c

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x4

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a020d

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a020e

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a020f

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a0210

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a0211

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a0212

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a0213

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a0214

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a0215

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a0216

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posX:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posY:I

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posX:I

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posY:I

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/RectF;

    const v3, 0x7f0a0223

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x7f0a0224

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x7f0a0223

    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0a0225

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const v6, 0x7f0a0224

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0a0226

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v1, 0x1

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v1, 0x2

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v1, 0x3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v1, 0x4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v1, 0x5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v1, 0x6

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v1, 0x7

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    return-void
.end method

.method private restoreDualEffectRectPosition()V
    .locals 9

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->saveDualEffectPositionInPreference()V

    const/16 v1, 0x33

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->getRectIndex(I)I

    move-result v2

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopY()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopX()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopY()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectHeight()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v3, v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopX()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopY()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightTopX()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightTopY()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomX()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomY()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomX()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomY()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public adjustRectMargin(I)V
    .locals 6
    .param p1    # I

    const/16 v2, 0x33

    const/4 v5, 0x0

    const-string v0, "TwGLDualMenu"

    const-string v1, "adjustRectMargin"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxBound()V

    if-eq p1, v2, :cond_1

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->getRectIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->getRectIndex(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v5, v5}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setMaxBound()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->moveBy([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    goto :goto_0
.end method

.method public applyInvisible()V
    .locals 3

    const/16 v2, 0x33

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideGlueAreaHandle()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mShowEditableShortMenu:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showTrackingButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideDualAreaHandle()V

    goto :goto_0
.end method

.method public applyInvisibleForDualOff()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->removeMessageTrackingStart()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideGlueAreaHandle()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideDualAreaHandle()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    return-void
.end method

.method public applyInvisibleForGlueRecording()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_0

    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideDualAreaHandle()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideGlueAreaHandle()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getHasMessageTrackingStart()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->removeMessageTrackingStart()V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getPosition()[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    aget v2, v0, v5

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    aget v2, v0, v4

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    aget v2, v0, v6

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    aget v2, v0, v7

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    aget v2, v0, v8

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, v0, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x6

    aget v3, v0, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget v3, v0, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public applyVisible()V
    .locals 14

    const/16 v13, 0x33

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    if-ne v0, v13, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mShowEditableShortMenu:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getIsCalledSwitchToCameraSync()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->sendShowBoundryRectMessage()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setGrowable(Z)V

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getPosition()[F

    move-result-object v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    aget v1, v12, v11

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aget v2, v12, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x2

    aget v3, v12, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x3

    aget v4, v12, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aget v5, v12, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aget v6, v12, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x6

    aget v7, v12, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/4 v8, 0x7

    aget v8, v12, v8

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    invoke-virtual/range {v0 .. v11}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFFFFFIIZ)V

    :cond_1
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    if-ne v0, v13, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showGlueAreaHandle()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->showBoundryRect()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showDualAreaHandle()V

    goto :goto_1
.end method

.method public calulateCoordinateForNormalPreviewRatio()V
    .locals 3

    const v2, 0x7f0a023a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getDualHandlerOffset()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    :goto_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->IsWideCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const v0, 0x7f0a0219

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    const v0, 0x7f0a021a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    const v0, 0x7f0a0217

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posX:I

    const v0, 0x7f0a0218

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posY:I

    :goto_2
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_top_boundary:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_top_boundary:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setHandlerAreaTopBoundary(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setHandlerAreaBottomBoundary(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_top_boundary:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setHandlerAreaTopBoundary(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setHandlerAreaBottomBoundary(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->readEffectRectinfo()V

    goto/16 :goto_0

    :cond_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isSquarePreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const v0, 0x7f0a0221

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    const v0, 0x7f0a0222

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    const v0, 0x7f0a021f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posX:I

    const v0, 0x7f0a0220

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posY:I

    goto :goto_2

    :cond_3
    const v0, 0x7f0a023b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const v0, 0x7f0a021d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    const v0, 0x7f0a021e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    const v0, 0x7f0a021b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posX:I

    const v0, 0x7f0a021c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posY:I

    goto/16 :goto_2
.end method

.method public checkTrackingBoundary(FF)Z
    .locals 11
    .param p1    # F
    .param p2    # F

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr p1, v4

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr p2, v4

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v5

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v5

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v9

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v9

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v8, 0x6

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v10

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v8, 0x7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v10

    const-string v4, "TwGLDualMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mX[0]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mY[0]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mX[1]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mY[1]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mX[2]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mY[2]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mX[3]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mY[3]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v2, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v4, v4, v5

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v7, v2

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->getMinValue(FF)F

    move-result v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    add-int/lit8 v7, v1, -0x1

    aget v4, v4, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v7, v7, v1

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->getMinValue(FF)F

    move-result v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    add-int/lit8 v7, v1, -0x1

    aget v4, v4, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v7, v7, v1

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->getMaxValue(FF)F

    move-result v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    add-int/lit8 v7, v1, -0x1

    aget v4, v4, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v7, v1

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->getMaxValue(FF)F

    move-result v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    add-int/lit8 v7, v1, -0x1

    aget v4, v4, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v7, v7, v1

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    add-int/lit8 v7, v1, -0x1

    aget v4, v4, v7

    sub-float v4, p2, v4

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v7, v1

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    add-int/lit8 v9, v1, -0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v4, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v7, v7, v1

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    add-int/lit8 v9, v1, -0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    div-float/2addr v4, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    add-float v3, v4, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    add-int/lit8 v7, v1, -0x1

    aget v4, v4, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v7, v1

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_0

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_3

    move v4, v5

    :goto_1
    return v4

    :cond_3
    move v4, v6

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method public clear()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setonQuadHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    :cond_6
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public clearGLView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    return-void
.end method

.method public decideEffectSize(I)F
    .locals 18
    .param p1    # I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v14

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v1, 0x1f40

    move/from16 v0, p1

    if-lt v0, v1, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHandler(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterWidth(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    return v1

    :pswitch_1
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a0205

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto :goto_0

    :pswitch_2
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a0207

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto :goto_0

    :pswitch_3
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a0209

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto :goto_0

    :pswitch_4
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a020b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto :goto_0

    :pswitch_5
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a020d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto :goto_0

    :pswitch_6
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a020f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto :goto_0

    :pswitch_7
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a0211

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a0213

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0a0215

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    :pswitch_a
    const/high16 v1, 0x3f800000

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getPosition()[F

    move-result-object v13

    const/4 v1, 0x0

    aget v2, v13, v1

    const/4 v1, 0x1

    aget v3, v13, v1

    const/4 v1, 0x2

    aget v4, v13, v1

    const/4 v1, 0x3

    aget v5, v13, v1

    const/4 v1, 0x4

    aget v6, v13, v1

    const/4 v1, 0x5

    aget v7, v13, v1

    const/4 v1, 0x6

    aget v8, v13, v1

    const/4 v1, 0x7

    aget v9, v13, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->isOutOfBoundary(FFFFFFFF)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x0

    aget v2, v13, v2

    const/4 v3, 0x2

    aget v3, v13, v3

    const/4 v4, 0x4

    aget v4, v13, v4

    const/4 v5, 0x6

    aget v5, v13, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x1

    aget v2, v13, v2

    const/4 v3, 0x3

    aget v3, v13, v3

    const/4 v4, 0x5

    aget v4, v13, v4

    const/4 v5, 0x7

    aget v5, v13, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x0

    aget v2, v13, v2

    const/4 v3, 0x2

    aget v3, v13, v3

    const/4 v4, 0x4

    aget v4, v13, v4

    const/4 v5, 0x6

    aget v5, v13, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v1

    sub-float v16, v1, v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x1

    aget v2, v13, v2

    const/4 v3, 0x3

    aget v3, v13, v3

    const/4 v4, 0x5

    aget v4, v13, v4

    const/4 v5, 0x7

    aget v5, v13, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v1

    sub-float v10, v1, v15

    const v1, 0x7f0a0205

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    div-float v17, v16, v1

    const v1, 0x7f0a0206

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    div-float v11, v10, v1

    move/from16 v0, v17

    invoke-static {v0, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    :cond_0
    const/high16 v1, 0x3f800000

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    :cond_1
    const/high16 v1, 0x3f800000

    :try_start_1
    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_2
    const/high16 v1, 0x3f800000

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public getBackGroundImage()Lcom/sec/android/glview/TwGLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBackGroundImage()Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    return-object v0
.end method

.method public getBoundryShowed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBoundryShowed()Z

    move-result v0

    return v0
.end method

.method public getEditableShortMenuShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mShowEditableShortMenu:Z

    return v0
.end method

.method public getGlueBoundryShowed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getBoundryShowed()Z

    move-result v0

    return v0
.end method

.method public getMaxValue(FF)F
    .locals 1
    .param p1    # F
    .param p2    # F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getMinValue(FF)F
    .locals 1
    .param p1    # F
    .param p2    # F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public hideAllBoundryRect()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->hideBoundryRect()V

    return-void
.end method

.method public hideDualAreaHandle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDisable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setBackGroundInvisible()V

    return-void
.end method

.method public hideGlueAreaHandle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setDisable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->hideBoundryRect()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setBackGroundInvisible()V

    return-void
.end method

.method public hideTrackingButton()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDisable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setBackGroundInvisible()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isInDualAreaBoundary(FF)Z
    .locals 11
    .param p1    # F
    .param p2    # F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v6

    const/16 v7, 0x33

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getPosition()[F

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v8, 0x2

    aget v8, v2, v8

    const/4 v9, 0x4

    aget v9, v2, v9

    const/4 v10, 0x6

    aget v10, v2, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v6

    float-to-int v1, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v7, 0x1

    aget v7, v2, v7

    const/4 v8, 0x3

    aget v8, v2, v8

    const/4 v9, 0x5

    aget v9, v2, v9

    const/4 v10, 0x7

    aget v10, v2, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v6

    float-to-int v4, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v8, 0x2

    aget v8, v2, v8

    const/4 v9, 0x4

    aget v9, v2, v9

    const/4 v10, 0x6

    aget v10, v2, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v6

    float-to-int v6, v6

    sub-int v5, v6, v1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v7, 0x1

    aget v7, v2, v7

    const/4 v8, 0x3

    aget v8, v2, v8

    const/4 v9, 0x5

    aget v9, v2, v9

    const/4 v10, 0x7

    aget v10, v2, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v6

    float-to-int v6, v6

    sub-int v0, v6, v4

    int-to-float v6, v1

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_2

    add-int v6, v1, v5

    int-to-float v6, v6

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_2

    int-to-float v6, v4

    cmpl-float v6, p2, v6

    if-ltz v6, :cond_2

    add-int v6, v4, v0

    int-to-float v6, v6

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v3

    iget v6, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_2

    iget v6, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    add-float/2addr v6, v7

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_2

    iget v6, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v6, p2, v6

    if-ltz v6, :cond_2

    iget v6, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v7

    add-float/2addr v6, v7

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_2

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public isInDualSplitAreaBoundary(FF)Z
    .locals 5
    .param p1    # F
    .param p2    # F

    const/4 v0, 0x0

    const/16 v4, 0x9

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusArea(II)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInvisibleMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    return v0
.end method

.method public isOutOfBoundary(FFFFFFFF)Z
    .locals 11
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # F
    .param p8    # F

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v9, p1, p3, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v9

    float-to-int v4, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p6

    move/from16 v1, p8

    invoke-virtual {v9, p2, p4, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v9

    float-to-int v7, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v9, p1, p3, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v9

    float-to-int v9, v9

    sub-int v8, v9, v4

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p6

    move/from16 v1, p8

    invoke-virtual {v9, p2, p4, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v9

    float-to-int v9, v9

    sub-int v3, v9, v7

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxBound()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinSizeF()Landroid/graphics/RectF;

    move-result-object v6

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxSizeF()Landroid/graphics/RectF;

    move-result-object v5

    int-to-float v9, v4

    iget v10, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_0

    add-int v9, v4, v8

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_0

    int-to-float v9, v7

    iget v10, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_0

    add-int v9, v7, v3

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    :cond_0
    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_1
    int-to-float v9, v8

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_2

    int-to-float v9, v8

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v10

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_2

    int-to-float v9, v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_2

    int-to-float v9, v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    if-lez v8, :cond_4

    if-gtz v3, :cond_5

    :cond_4
    const/4 v9, 0x1

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public isTrackingStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    return v0
.end method

.method public needToOrientation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mNeedToOrientation:Z

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;

    const/16 v5, 0x33

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->checkTrackingBoundary(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v2

    if-ne v2, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocusState()V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBoundryShowed()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v2

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBoundryShowed()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v2

    if-eq v2, v5, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocusState()V

    move v0, v1

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->isInDualSplitAreaBoundary(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onDualModeRecodingSwitchCamera()V

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onDualModeSwitchCamera()V

    goto :goto_1
.end method

.method public onBack()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->saveDualLastTrackingPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->saveDualEffectPositionInPreference()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showGlueHanlderRect()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDualCaptureModeAsyncInit()V
    .locals 4

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDualModeAsyncCaptureCompleted()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x64

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onDualModeAsyncFirstCapture()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x64

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onHide()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->hideBoundryRect()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x33

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBoundryShowed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onVideoRecordingStop()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onVideoRecordingStop()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongPressed()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x1f40

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHandler(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FALSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBoundryShowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->showBoundryRect()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getSideLock()I

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->NONE_LOCK:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDraggable(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setGrowable(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->sendHideBoundryRectMessage()V

    goto :goto_0
.end method

.method public onMove(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 10
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->calulateCoordinateForNormalPreviewRatio()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxBound()V

    cmpl-float v0, p4, p5

    if-lez v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    :cond_3
    cmpg-float v0, p4, p5

    if-gez v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    if-eqz v0, :cond_6

    :cond_4
    cmpg-float v0, p4, p5

    if-gez v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    :cond_5
    cmpl-float v0, p4, p5

    if-lez v0, :cond_c

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    if-nez v0, :cond_c

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v9, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBoundryShowed()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getRectBeforeDragged()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getRectBeforeDragged()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_b

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->showBoundryRect()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocusState()V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getSideLock()I

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->NONE_LOCK:I

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDraggable(Z)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setGrowable(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->sendHideBoundryRectMessage()V

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBoundryShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->sendHideBoundryRectMessage()V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v2, v2

    sub-float v2, p3, v2

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFII)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->removeMessageTrackingStart()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->saveDualLastTrackingPosition()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->saveDualEffectPositionInPreference()V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    return-void
.end method

.method public onQuadHandlerMove(FFFFFFFF)V
    .locals 18
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # F
    .param p8    # F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v4

    const/16 v5, 0x33

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->calulateCoordinateForNormalPreviewRatio()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v6, v6

    sub-float v6, p2, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v7, v7

    sub-float v7, p3, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v8, v8

    sub-float v8, p4, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v9, v9

    sub-float v9, p5, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v10, v10

    sub-float v10, p6, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v11, v11

    sub-float v11, p7, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v12, v12

    sub-float v12, p8, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v15, 0x0

    invoke-virtual/range {v4 .. v15}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFFFFFIIZ)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p7

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p7

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v5

    sub-float v16, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p8

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p8

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v5

    sub-float v17, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getBoundryShowed()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->geLeftBeforeDragged()[F

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    cmpl-float v4, v4, v16

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->geLeftBeforeDragged()[F

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    cmpl-float v4, v4, v17

    if-eqz v4, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->showBoundryRect()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onResume()V

    return-void
.end method

.method public onShow()V
    .locals 5

    const/4 v4, 0x4

    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setonQuadHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mShowEditableShortMenu:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->applyInvisible()V

    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->applyVisible()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setTouchHandled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    :cond_0
    return-void
.end method

.method public roundOrientation(I)I
    .locals 1
    .param p1    # I

    add-int/lit8 v0, p1, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method public saveDualLastTrackingPosition()V
    .locals 15

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v10

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v10

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v12

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v12

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v13

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v13

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v1, v0, v11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v3, v0, v10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v4, v0, v10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v5, v0, v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v6, v0, v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v0, v13

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v0, v13

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->isOutOfBoundary(FFFFFFFF)Z

    move-result v0

    if-ne v0, v10, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->resetHandler()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getPosition()[F

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    aget v1, v9, v11

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftTopX(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    aget v1, v9, v10

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftTopY(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    aget v1, v9, v12

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightTopX(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    aget v1, v9, v13

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightTopY(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    aget v1, v9, v14

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightBottomX(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x5

    aget v1, v9, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightBottomY(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x6

    aget v1, v9, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftBottomX(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x7

    aget v1, v9, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftBottomY(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v1, v1, v11

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v2, v2, v11

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v6, v6, v12

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v7, v13

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v8, v13

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setPosition(FFFFFFFF)V

    goto/16 :goto_0
.end method

.method public sendHideBoundryRectMessage()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public sendShowBoundryRectMessage()V
    .locals 4

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    return-void
.end method

.method public setEditableShortMenuShow(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mShowEditableShortMenu:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->removeMessageTrackingStart()V

    :cond_0
    return-void
.end method

.method public setEffect(I)V
    .locals 20
    .param p1    # I

    const-string v2, "TwGLDualMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffect : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    const-string v2, "TwGLDualMenu"

    const-string v3, "setEffect : mActivityContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x33

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideDualAreaHandle()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showGlueAreaHandle()V

    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->calulateCoordinateForNormalPreviewRatio()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->canRestoreDualEffectRectPosition()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x30

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x30

    if-eq v2, v3, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->restoreDualEffectRectPosition()V

    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->adjustRectMargin(I)V

    packed-switch p1, :pswitch_data_0

    const/16 v2, 0x1f40

    move/from16 v0, p1

    if-lt v0, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "TwGLDualMenu"

    const-string v3, "setDualEffectSync : fail to load external filters"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->resetHandler()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideGlueAreaHandle()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showDualAreaHandle()V

    goto/16 :goto_1

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0205

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a0206

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0205

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a0206

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v2

    const/16 v3, 0x33

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setAspectRatioLocked(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setGrowable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x31

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0207

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a0208

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0207

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a0208

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0209

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a020a

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0209

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a020a

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a020b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a020c

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a020b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a020c

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a020d

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a020e

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a020d

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a020e

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a020f

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a0210

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a020f

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a0210

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0211

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a0212

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0211

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a0212

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0213

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a0214

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0213

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a0214

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v7, 0x8

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0215

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a0216

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0215

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a0216

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v7, 0x8

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDisable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v7, 0x9

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v7, 0x9

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->LEFT_LOCK:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setSideLock(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDraggable(Z)V

    goto/16 :goto_2

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v7, 0xa

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v9, 0x5

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v10, 0x6

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    invoke-virtual/range {v2 .. v10}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setPosition(FFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const v3, 0x7f0a0205

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a0206

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const v3, 0x7f0a0205

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a0206

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v9, 0x5

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v10, 0x6

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFFFFFIIZ)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->showBoundryRect()V

    goto/16 :goto_2

    :cond_c
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterPosx(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterPosy(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterWidth(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHeight(I)I

    move-result v14

    const-string v2, "TwGLDualMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min setEffect :: unknown effext setting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "posy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "width"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "height"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v15

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int v4, v4, v16

    int-to-float v4, v4

    move/from16 v0, v19

    int-to-float v5, v0

    int-to-float v6, v14

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    mul-int/lit8 v3, v19, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-int/lit8 v4, v14, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    mul-int/lit8 v3, v19, 0x3

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    mul-int/lit8 v4, v14, 0x3

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v4, v0

    move/from16 v0, v19

    int-to-float v5, v0

    int-to-float v6, v14

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHandler(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FALSE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDisable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDraggable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setDisable(Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    :goto_3
    const-string v2, "TwGLDualMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffect :: unknown effext setting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_0
    move-exception v2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public setEffectMenuSelect(I)V
    .locals 23
    .param p1    # I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    const-string v2, "TwGLDualMenu"

    const-string v3, "setEffectMenuSelect : mActivityContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "TwGLDualMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffectMenuSelect : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->calulateCoordinateForNormalPreviewRatio()V

    const/16 v2, 0x30

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setEffect(I)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x1f40

    if-lt v2, v3, :cond_3

    const/16 v2, 0x30

    move/from16 v0, p1

    if-eq v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHandler(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FALSE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setEffect(I)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x33

    move/from16 v0, p1

    if-eq v0, v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x33

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->removeMessageTrackingStart()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxBound()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    aput v2, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    aput v2, v3, v4

    new-instance v21, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    const/4 v7, 0x0

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v7

    add-float/2addr v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->height()F

    move-result v8

    add-float/2addr v7, v8

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v20, v21

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v2, v3, v4, v7, v8}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v20, v19

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->decideEffectSize(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    const/16 v2, 0x33

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideDualAreaHandle()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showGlueAreaHandle()V

    :goto_2
    packed-switch p1, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_30

    const/16 v2, 0x1f40

    move/from16 v0, p1

    if-lt v0, v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "TwGLDualMenu"

    const-string v3, "setDualEffectSync : fail to load external filters"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    new-instance v21, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v20, v21

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->resetHandler()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideGlueAreaHandle()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showDualAreaHandle()V

    goto/16 :goto_2

    :pswitch_0
    const v2, 0x7f0a0205

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    const v2, 0x7f0a0206

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_8
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_9
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0205

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a0206

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0205

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a0206

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v2

    const/16 v3, 0x33

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setAspectRatioLocked(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setGrowable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    :cond_d
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x31

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v2, v3, v4, v7, v8}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float v8, v2, v3

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float v9, v2, v3

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_0

    :pswitch_1
    const v2, 0x7f0a0207

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    const v2, 0x7f0a0208

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_10

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_10
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_11

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_11
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_12

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0207

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a0208

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0207

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a0208

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    :pswitch_2
    const v2, 0x7f0a0209

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    const v2, 0x7f0a020a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_13
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_14

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_14
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_15

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0209

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a020a

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0209

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a020a

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    :pswitch_3
    const v2, 0x7f0a020b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    const v2, 0x7f0a020c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_16

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_16
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_17

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_17
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_18

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a020b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a020c

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a020b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a020c

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    :pswitch_4
    const v2, 0x7f0a020d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    const v2, 0x7f0a020e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_19

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_19
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1a

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_1a
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a020d

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a020e

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a020d

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a020e

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    :pswitch_5
    const v2, 0x7f0a020f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    const v2, 0x7f0a0210

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1c

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_1c
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1d

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_1d
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1e

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a020f

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a0210

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a020f

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a0210

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    :pswitch_6
    const v2, 0x7f0a0211

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    const v2, 0x7f0a0212

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1f

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_1f
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_20

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_20
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_21

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0211

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a0212

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0211

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a0212

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    :pswitch_7
    const v2, 0x7f0a0213

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    const v2, 0x7f0a0214

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_22

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_22
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_23

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_23
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_24

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0213

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a0214

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0213

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a0214

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    :pswitch_8
    const v2, 0x7f0a0215

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    const v2, 0x7f0a0216

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_25

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_25
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_26

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_26
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_27

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0215

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a0216

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0a0215

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a0216

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDisable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v7, 0x9

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v8, 0x9

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v9, 0x9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v2, v3, v4, v7, v8}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float v8, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    iget v9, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->LEFT_LOCK:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setSideLock(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDraggable(Z)V

    goto/16 :goto_3

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    iget v8, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    iget v9, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    const v2, 0x7f0a0205

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    const v2, 0x7f0a0206

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_29

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_29
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2a

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_2a
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2b

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :cond_2b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move-object/from16 v0, v20

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float v10, v2, v5

    move-object/from16 v0, v20

    iget v11, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float v12, v2, v5

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float v13, v2, v6

    move-object/from16 v0, v20

    iget v14, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float v15, v2, v6

    invoke-virtual/range {v7 .. v15}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setPosition(FFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const v3, 0x7f0a0205

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0a0206

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const v3, 0x7f0a0205

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0a0206

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float v8, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float v9, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    add-float v10, v2, v5

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float v11, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    add-float v12, v2, v5

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    add-float v13, v2, v6

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float v14, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    add-float v15, v2, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v7 .. v18}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFFFFFIIZ)V

    goto/16 :goto_3

    :cond_2c
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterWidth(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHeight(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2d

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_2d
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2e

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_2e
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2f

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterWidth(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHeight(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterWidth(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHeight(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_30
    :goto_4
    const-string v2, "TwGLDualMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffect :: unknown effext setting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_0
    move-exception v2

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public setOrientationChanged(IZ)V
    .locals 10
    .param p1    # I
    .param p2    # Z

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    and-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x1f40

    if-lt v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    if-ne v0, v2, :cond_5

    :cond_3
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v8

    const/4 v0, 0x0

    iget v1, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget v0, v8, Landroid/graphics/RectF;->right:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_WIDTH:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, v8, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->updateRectBeforeDragged()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v9, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    :cond_6
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    goto :goto_0
.end method

.method public setOrientationForDual()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    return-void
.end method

.method protected setOrientationListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$2;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public setPreviousPosition(I)V
    .locals 22
    .param p1    # I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->calulateCoordinateForNormalPreviewRatio()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxBound()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setMaxBound()V

    const/16 v1, 0x30

    move/from16 v0, p1

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x33

    if-eq v1, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setEffect(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v2, 0x31

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v2, 0x31

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    if-eqz v1, :cond_6

    :cond_4
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    if-nez v1, :cond_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mNeedToOrientation:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mNeedToOrientation:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFII)V

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getPosition()[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x0

    aget v2, v17, v2

    const/4 v3, 0x2

    aget v3, v17, v3

    const/4 v4, 0x4

    aget v4, v17, v4

    const/4 v5, 0x6

    aget v5, v17, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v1

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x1

    aget v2, v17, v2

    const/4 v3, 0x3

    aget v3, v17, v3

    const/4 v4, 0x5

    aget v4, v17, v4

    const/4 v5, 0x7

    aget v5, v17, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v1

    float-to-int v0, v1

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x0

    aget v2, v17, v2

    const/4 v3, 0x2

    aget v3, v17, v3

    const/4 v4, 0x4

    aget v4, v17, v4

    const/4 v5, 0x6

    aget v5, v17, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v1

    float-to-int v1, v1

    sub-int v21, v1, v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x1

    aget v2, v17, v2

    const/4 v3, 0x3

    aget v3, v17, v3

    const/4 v4, 0x5

    aget v4, v17, v4

    const/4 v5, 0x7

    aget v5, v17, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v1

    float-to-int v1, v1

    sub-int v13, v1, v20

    if-eqz v21, :cond_a

    if-nez v13, :cond_b

    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setEffect(I)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->moveBy([F)[F

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x0

    aget v2, v15, v2

    const/4 v3, 0x1

    aget v3, v15, v3

    const/4 v4, 0x2

    aget v4, v15, v4

    const/4 v5, 0x3

    aget v5, v15, v5

    const/4 v6, 0x4

    aget v6, v15, v6

    const/4 v7, 0x5

    aget v7, v15, v7

    const/4 v8, 0x6

    aget v8, v15, v8

    const/4 v9, 0x7

    aget v9, v15, v9

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setPosition(FFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v15, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v15, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v15, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x3

    aget v5, v15, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v15, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x5

    aget v7, v15, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/4 v8, 0x6

    aget v8, v15, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const/4 v9, 0x7

    aget v9, v15, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFFFFFIIZ)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setEffect(I)V

    goto/16 :goto_0
.end method

.method public setResizeHandleDragVibration(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setResizeHandleDragVibration(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setResizeHandleDragVibration(Z)V

    return-void
.end method

.method public setTrackingStart(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    return-void
.end method

.method public setonHandlerMoveListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getonHandlerMoveListener()Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;)V

    :cond_0
    return-void
.end method

.method public setonQuadHandlerMoveListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getonQuadHandlerMoveListener()Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setonQuadHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;)V

    :cond_0
    return-void
.end method

.method public showDualAreaHandle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setBackGroundVisible()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->NONE_LOCK:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setSideLock(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDisable(Z)V

    :cond_0
    return-void
.end method

.method public showDualListMenu()V
    .locals 8

    const/16 v2, 0x5a

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-nez v0, :cond_0

    new-instance v4, Lcom/sec/android/app/camera/resourcedata/DualEffectResourceData;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v4, v1}, Lcom/sec/android/app/camera/resourcedata/DualEffectResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getPopupMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->disableAnimation()V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->enableAnimation()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideThumbnailListButton()V

    return-void
.end method

.method public showGlueAreaHandle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setDisable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setBackGroundVisible()V

    return-void
.end method

.method public showGlueHanlderRect()V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->calulateCoordinateForNormalPreviewRatio()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setMaxBound()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v9

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v9

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v10

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v10

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v11

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v12

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v12

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v1, v0, v9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v2, v0, v9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v3, v0, v10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v4, v0, v10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v5, v0, v11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v6, v0, v11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v0, v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v0, v12

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->isOutOfBoundary(FFFFFFFF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v1, v1, v9

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v2, v2, v9

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v5, v5, v11

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v6, v6, v11

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v7, v12

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v8, v12

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setPosition(FFFFFFFF)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->applyVisible()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->moveBy([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    aget v1, v1, v9

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    aget v2, v2, v10

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    aget v5, v5, v13

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v8, 0x6

    aget v7, v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v9, 0x7

    aget v8, v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setPosition(FFFFFFFF)V

    goto :goto_0
.end method

.method public showTrackingButton()V
    .locals 4

    const/16 v3, 0x33

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->hideBoundryRect()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setDisable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setBackGroundInvisible()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getIsCalledSwitchToCameraSync()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->sendShowBoundryRectMessage()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setDisable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setBackGroundVisible()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->showBoundryRect()V

    goto :goto_1
.end method
