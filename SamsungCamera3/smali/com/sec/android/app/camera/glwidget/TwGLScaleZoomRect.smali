.class public Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLScaleZoomRect.java"


# static fields
.field private static final DEFAULT_COLOR:I

.field private static final DEFAULT_COLOR_IN:I

.field private static final DEFAULT_THICKNESS:I

.field private static final DEFAULT_THICKNESS_IN:I

.field public static final MAX_ZOOM_LEVEL:I

.field public static final MAX_ZOOM_RATIO:I

.field public static final MIN_ZOOM_RATIO:I

.field protected static final TAG:Ljava/lang/String; = "TwGLScaleZoomRect"

.field private static final TEXT_SIZE:I

.field private static final ZOOM_RECT_MAX_SIZE_SUPPORT_CONSTANT_GROWTH_RATE:I

.field private static final ZOOM_RECT_SIZE:I

.field public static final ZOOM_STEP:F

.field private static final ZOOM_TEXT_HEIGHT:F

.field private static final ZOOM_TEXT_MARGIN:F

.field private static final ZOOM_TEXT_SHADOW:Z

.field private static final ZOOM_TEXT_SHADOW_OFFSET:I

.field private static final ZOOM_TEXT_STROKE_COLOR:I

.field private static final ZOOM_TEXT_STROKE_WIDTH:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAudioZoomIndicatorSizeMargin:I

.field private mAudioZoomIndicatorWidth:I

.field private mAudioZoomInidicator:Lcom/sec/android/glview/TwGLImage;

.field private mCenterPosX:F

.field private mCenterPosY:F

.field private mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

.field private mZoomRectOffset:F

.field private mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

.field private mZoomRectSize:I

.field private mZoomText:Lcom/sec/android/glview/TwGLText;

.field private mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f0b0015

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MAX_ZOOM_RATIO:I

    const v1, 0x7f0b0017

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MIN_ZOOM_RATIO:I

    const v1, 0x7f0b0014

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MAX_ZOOM_LEVEL:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MAX_ZOOM_RATIO:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MIN_ZOOM_RATIO:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MAX_ZOOM_LEVEL:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    const v1, 0x7f0a01f7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    const v1, 0x7f0a01f8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_MAX_SIZE_SUPPORT_CONSTANT_GROWTH_RATE:I

    const v1, 0x7f0a01f5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_MARGIN:F

    const v1, 0x7f0a01f6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    const v1, 0x7f0b0026

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_STROKE_WIDTH:I

    const/high16 v1, 0x7f090000

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_STROKE_COLOR:I

    const v1, 0x7f0b0052

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->TEXT_SIZE:I

    const v1, 0x7f090016

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_COLOR:I

    const v1, 0x7f090006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_COLOR_IN:I

    const v1, 0x7f0b0018

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_THICKNESS:I

    const v1, 0x7f0b0019

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_THICKNESS_IN:I

    const v1, 0x7f0b002d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_SHADOW:Z

    const v0, 0x7f0b002e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_SHADOW_OFFSET:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFLjava/lang/String;)V
    .locals 10
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # F
    .param p3    # F
    .param p4    # Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOffset:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomIndicatorWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomIndicatorSizeMargin:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomIndicatorWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomIndicatorSizeMargin:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_COLOR:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_THICKNESS:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_COLOR_IN:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_THICKNESS_IN:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_MARGIN:F

    sub-float v3, p3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    add-float/2addr v2, p2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v2, v2

    add-float/2addr v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_MARGIN:F

    add-float/2addr v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    sub-float v2, p2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomIndicatorWidth:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomIndicatorSizeMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->TEXT_SIZE:I

    int-to-float v7, v6

    const v6, 0x7f090006

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_SHADOW:Z

    move-object v6, p4

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_SHADOW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_SHADOW_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method


# virtual methods
.method public resetPositionForCoverMode(IIZ)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    int-to-float v0, p2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_MARGIN:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto :goto_0
.end method

.method public setZoomValue(ILjava/lang/String;Z)V
    .locals 11
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    const/high16 v7, 0x40000000

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v5, v5

    div-float v3, v5, v7

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_MAX_SIZE_SUPPORT_CONSTANT_GROWTH_RATE:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CommonEngine;->getMaxZoomLevel()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v7

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOffset:F

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    sub-float/2addr v5, v3

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOffset:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    sub-float v1, v5, v6

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    sub-float/2addr v5, v3

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOffset:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    sub-float v4, v5, v6

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    add-float/2addr v5, v3

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOffset:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float v2, v5, v6

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    add-float/2addr v5, v3

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOffset:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float v0, v5, v6

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    sub-float v6, v2, v1

    sub-float v7, v0, v4

    invoke-virtual {v5, v1, v4, v6, v7}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    sub-float v6, v2, v1

    sub-float v7, v0, v4

    invoke-virtual {v5, v1, v4, v6, v7}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    if-eqz p3, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    neg-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOffset:F

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v5, v10, v6}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v6, v7

    add-float/2addr v6, v9

    mul-float/2addr v6, v3

    sub-float v1, v5, v6

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v6, v7

    add-float/2addr v6, v9

    mul-float/2addr v6, v3

    sub-float v4, v5, v6

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v6, v7

    add-float/2addr v6, v9

    mul-float/2addr v6, v3

    add-float v2, v5, v6

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v6, v7

    add-float/2addr v6, v9

    mul-float/2addr v6, v3

    add-float v0, v5, v6

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    neg-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    add-float/2addr v6, v9

    invoke-virtual {v5, v10, v6}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto :goto_1
.end method

.method public setZoomValue(ILjava/lang/String;ZZ)V
    .locals 11
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .param p4    # Z

    const/4 v5, 0x0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float v3, v6, v7

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_MAX_SIZE_SUPPORT_CONSTANT_GROWTH_RATE:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CommonEngine;->getMaxZoomLevel()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOffset:F

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    sub-float/2addr v6, v3

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOffset:F

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float v1, v6, v7

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    sub-float/2addr v6, v3

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOffset:F

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float v4, v6, v7

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    add-float/2addr v6, v3

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOffset:F

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v2, v6, v7

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    add-float/2addr v6, v3

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOffset:F

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    sub-float v7, v2, v1

    sub-float v8, v0, v4

    invoke-virtual {v6, v1, v4, v7, v8}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    sub-float v7, v2, v1

    sub-float v8, v0, v4

    invoke-virtual {v6, v1, v4, v7, v8}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    if-eqz p3, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomInidicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    if-eqz p4, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomInidicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    neg-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOffset:F

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    if-eqz p4, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    int-to-float v7, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    neg-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOffset:F

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    const/4 v7, 0x0

    const v8, 0x7f0b002d

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    return-void

    :cond_0
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000

    add-float/2addr v7, v8

    mul-float/2addr v7, v3

    sub-float v1, v6, v7

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000

    add-float/2addr v7, v8

    mul-float/2addr v7, v3

    sub-float v4, v6, v7

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000

    add-float/2addr v7, v8

    mul-float/2addr v7, v3

    add-float v2, v6, v7

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000

    add-float/2addr v7, v8

    mul-float/2addr v7, v3

    add-float v0, v6, v7

    goto/16 :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomInidicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    neg-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x3f800000

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto/16 :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomInidicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomIndicatorWidth:I

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomIndicatorSizeMargin:I

    add-int/2addr v6, v7

    neg-int v6, v6

    div-int/lit8 v5, v6, 0x2

    goto/16 :goto_1

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    int-to-float v7, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    neg-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x3f800000

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_2
.end method
