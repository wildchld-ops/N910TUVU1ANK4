.class public Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSelfieMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# static fields
.field private static final FONT_COLOR:I

.field private static final FONT_SIZE:I

.field private static final LINE_THICK:I

.field private static final RECTANGLE_COLOR:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "TwGLSelfieMenu"

.field private static final TEXT_BOTTOM_MARGIN:F

.field private static final TEXT_HEIGHT:F

.field private static final TEXT_HEIGHT_VERITCAL:F

.field private static final TEXT_POS_X:F

.field private static final TEXT_POS_Y:F

.field private static final TEXT_SIDE_MARGIN:F

.field private static final TEXT_SIZE:F

.field private static final TEXT_STROKE_COLOR:I

.field private static final TEXT_STROKE_WIDTH:I

.field private static final TEXT_WIDTH:F

.field private static final TEXT_WIDTH_VERITCAL:F

.field private static final THUMBNAIL_HEIGHT:I

.field private static final THUMBNAIL_LIST_180_POS_X:I

.field private static final THUMBNAIL_LIST_180_POS_Y:I

.field private static final THUMBNAIL_LIST_270_POS_X:I

.field private static final THUMBNAIL_LIST_270_POS_Y:I

.field private static final THUMBNAIL_LIST_90_POS_X:I

.field private static final THUMBNAIL_LIST_90_POS_Y:I

.field private static final THUMBNAIL_LIST_HEIGHT:I

.field private static final THUMBNAIL_LIST_POS_X:I

.field private static final THUMBNAIL_LIST_POS_Y:I

.field private static final THUMBNAIL_LIST_WIDTH:I

.field private static final THUMBNAIL_OFFSET:I

.field private static final THUMBNAIL_WIDTH:I


# instance fields
.field private isContinuousCapturing:Z

.field private mCapturedFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContinuousCount:I

.field private mFaceDetectionRect:Landroid/graphics/Rect;

.field private mOrientation:I

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mRectangleScreen:Lcom/sec/android/glview/TwGLRectangle;

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x7f0a0000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_WIDTH:I

    const v0, 0x7f0a0001

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_HEIGHT:I

    const v0, 0x7f0a03ba

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_OFFSET:I

    const v0, 0x7f0a03b8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_WIDTH:I

    const v0, 0x7f0a03b9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_HEIGHT:I

    const v0, 0x7f0a03ae

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_POS_X:I

    const v0, 0x7f0a03af

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_POS_Y:I

    const v0, 0x7f0a03b6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_WIDTH:I

    const v0, 0x7f0a03b7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_HEIGHT:I

    const v0, 0x7f0a03b0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_270_POS_X:I

    const v0, 0x7f0a03b1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_270_POS_Y:I

    const v0, 0x7f0a03b2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_180_POS_X:I

    const v0, 0x7f0a03b3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_180_POS_Y:I

    const v0, 0x7f0a03b4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_90_POS_X:I

    const v0, 0x7f0a03b5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_90_POS_Y:I

    const v0, 0x7f0b0049

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->FONT_SIZE:I

    const v0, 0x7f090011

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->FONT_COLOR:I

    const v0, 0x7f0b0011

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->LINE_THICK:I

    const v0, 0x7f090024

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->RECTANGLE_COLOR:I

    const v0, 0x7f0a0079

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_WIDTH:F

    const v0, 0x7f0a007a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_WIDTH_VERITCAL:F

    const v0, 0x7f0a007b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_HEIGHT:F

    const v0, 0x7f0a007c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_HEIGHT_VERITCAL:F

    const v0, 0x7f0a007d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_SIDE_MARGIN:F

    const v0, 0x7f0a0081

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_BOTTOM_MARGIN:F

    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_POS_X:F

    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_POS_Y:F

    const v0, 0x7f0b0050

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_SIZE:F

    const v0, 0x7f0b0027

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_STROKE_WIDTH:I

    const/high16 v0, 0x7f090000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_STROKE_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # I
    .param p3    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4    # Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    iput-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mRectangleScreen:Lcom/sec/android/glview/TwGLRectangle;

    iput-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mFaceDetectionRect:Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mPreviewRect:Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mCapturedFileList:Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->setCaptureEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->setTouchHandled(Z)V

    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V

    return-void
.end method

.method private init(Lcom/sec/android/glview/TwGLViewGroup;I)V
    .locals 13
    .param p1    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p2    # I

    const/high16 v12, 0x40000000

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    const-string v0, "TwGLSelfieMenu"

    const-string v1, "mActivityContext is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mContinuousCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->isContinuousCapturing:Z

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    invoke-virtual {v0, v11}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfieContinuousValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;->setContinuousValue(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->RECTANGLE_COLOR:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_WIDTH:I

    int-to-float v7, v3

    const/4 v8, 0x3

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mRectangleScreen:Lcom/sec/android/glview/TwGLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mRectangleScreen:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    const v6, 0x7f0c02a0

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->FONT_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v10, v10}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v12

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_POS_X:F

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_WIDTH_VERITCAL:F

    add-float/2addr v3, v4

    div-float/2addr v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mRectangleScreen:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected calculateOrientationForPicture(I)I
    .locals 3
    .param p1    # I

    move v0, p1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method public checkHeadPosition([B)Z
    .locals 1
    .param p1    # [B

    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public deNormalize(FI)F
    .locals 2
    .param p1    # F
    .param p2    # I

    const/high16 v0, 0x447a0000

    add-float/2addr v0, p1

    const/high16 v1, 0x44fa0000

    div-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v0, v1

    return v0
.end method

.method public frontLCDWhitening(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mRectangleScreen:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mRectangleScreen:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mRectangleScreen:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mRectangleScreen:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    goto :goto_0
.end method

.method public getContinuousCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mContinuousCount:I

    return v0
.end method

.method public hideThumbnailList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public increaseCount()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mContinuousCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mContinuousCount:I

    return-void
.end method

.method public isContinuousCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->isContinuousCapturing:Z

    return v0
.end method

.method public isLastContinuousShot()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mContinuousCount:I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfieContinuousValue()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeOffset(Landroid/graphics/Point;I)V
    .locals 6
    .param p1    # Landroid/graphics/Point;
    .param p2    # I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfieContinuousValue()I

    move-result v0

    if-nez p2, :cond_2

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_WIDTH:I

    mul-int/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_OFFSET:I

    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/graphics/Point;->x:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_POS_Y:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_270_POS_X:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_HEIGHT:I

    mul-int/2addr v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_OFFSET:I

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_WIDTH:I

    mul-int/2addr v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_OFFSET:I

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Point;->x:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_180_POS_Y:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_LIST_90_POS_X:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_HEIGHT:I

    mul-int/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->THUMBNAIL_OFFSET:I

    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public onBack()V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "TwGLSelfieMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->isContinuousCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->isContinuousCapturing:Z

    if-eqz v0, :cond_3

    const-string v0, "TwGLSelfieMenu"

    const-string v1, "ignore Back key. isContinuousCapturing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelShutterTimer()V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mContinuousCount:I

    if-le v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->showSmartSelfShot()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreviewDummy()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setWinkDetected(Z)V

    return-void

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mContinuousCount:I

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->rename()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_1
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfieContinuousValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;->setContinuousValue(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_0
    .end packed-switch
.end method

.method public onHide()V
    .locals 2

    const-string v0, "TwGLSelfieMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mOrientation:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    const-string v1, "TwGLSelfieMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOrientationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->makeOffset(Landroid/graphics/Point;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;->translateAbsolute(FF)V

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mText:Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_WIDTH_VERITCAL:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->TEXT_HEIGHT_VERITCAL:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "TwGLSelfieMenu"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->reset()V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    return-void
.end method

.method public onShow()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mPreviewRect:Landroid/graphics/Rect;

    const-string v0, "TwGLSelfieMenu"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public pushSelfieString(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->isContinuousCapturing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mCapturedFileList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mCapturedFileList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mCapturedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public rename()V
    .locals 10

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mCapturedFileList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v6, :cond_0

    const-string v6, "TwGLSelfieMenu"

    const-string v7, "rename, context is null"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "TwGLSelfieMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not exsist.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/android/app/camera/CommonEngine;->setLastCapturedTitle(Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2, v6, v7}, Lcom/sec/android/app/camera/Util;->renameFile(Ljava/io/File;Ljava/io/File;Landroid/content/Context;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/camera/Camera;->sendMessageUpdateThumbnail(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLSelfieMenu"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->showLCDWhitening(Z)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mContinuousCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->isContinuousCapturing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mCapturedFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mCapturedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mCapturedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mCapturedFileList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;->resetList()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0xbb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0xbb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setContinuousCapturing(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->isContinuousCapturing:Z

    return-void
.end method

.method public showSmartSelfShot()V
    .locals 15

    const/16 v14, 0x1e

    const/16 v0, 0x1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v8

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0041

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v12

    if-nez v12, :cond_0

    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".jpg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v12

    mul-int/lit8 v12, v12, 0x5a

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->calculateOrientationForPicture(I)I

    move-result v10

    new-instance v11, Landroid/graphics/Rect;

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_WIDTH:I

    sub-int/2addr v12, v0

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_HEIGHT:I

    sub-int/2addr v13, v0

    invoke-direct {v11, v14, v14, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mCapturedFileList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v1, v12, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_1
    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mCapturedFileList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_2

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mCapturedFileList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v5

    aget-object v12, v1, v5

    if-nez v12, :cond_1

    const-string v12, "TwGLSelfieMenu"

    const-string v13, "[selfie] showSmartSelfShotHighlight return error! : file Path is null!! "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_0
    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.sec.di.SmartSelfShot"

    const-string v13, "com.sec.di.SmartSelfShot.EditorActivity"

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "title"

    invoke-virtual {v6, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v12, 0x40000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v12, "FilePaths"

    invoke-virtual {v6, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "ResultFilePath"

    invoke-virtual {v6, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "Orientation"

    invoke-virtual {v6, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "roi_rect"

    invoke-virtual {v6, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v12, "preview_width"

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_WIDTH:I

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "preview_height"

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->SCREEN_HEIGHT:I

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "MainFD_rect"

    iget-object v13, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mFaceDetectionRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v12, "doFaceBeauty"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/sec/android/app/camera/Camera;->mIsShowSmartSelfie:Z

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v13, 0x7e5

    invoke-virtual {v12, v6, v13}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/high16 v13, 0x7f050000

    const v14, 0x7f050001

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    goto :goto_2
.end method

.method public showThumbnailList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateSelfieThumbnail([B)V
    .locals 6
    .param p1    # [B

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mOrientation:I

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->makeOffset(Landroid/graphics/Point;I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;->translateAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5a

    rsub-int v1, v2, 0x168

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    invoke-virtual {v2, p1, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;->addThumbnail([BI)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelfieMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLSelfieThumbnailList;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    mul-int/lit8 v1, v2, 0x5a

    goto :goto_0
.end method
