.class public Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLMagicMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$OnMagicCaptureCancelListener;
    }
.end annotation


# static fields
.field private static final CAPTURE_PROGRESS_HEIGHT:I

.field private static final CAPTURE_PROGRESS_WIDTH:I

.field private static final CAPTURE_PROGRESS_X:[I

.field private static final CAPTURE_PROGRESS_Y:[I

.field protected static final DISABLE_MENU:I = 0x0

.field protected static final ENABLE_MENU:I = 0x1

.field private static MAGIC_FRONT_MAX_IMAGE_COUNT:I = 0x0

.field private static MAGIC_MAX_IMAGE_COUNT:I = 0x0

.field private static MAGIC_MAX_PROGRESS_COUNT:I = 0x0

.field private static final MAGIC_PROGRESS_TEXT_SHADOW_OFFSET:I

.field private static final MAGIC_SHOT_MODES:[Ljava/lang/String;

.field private static final MAGIC_SHOT_PACKAGE:Ljava/lang/String; = "com.arcsoft.magicshotstudio"

.field private static final MAGIC_TEXT_SHADOW_COLOR:I

.field private static final MAGIC_TEXT_SHADOW_OFFSET:I

.field private static final MAGIC_TEXT_SHADOW_RADIUS:F = 1.0f

.field private static final PROGRESSBAR_TEXT_BOTTOM_PADDING:I

.field private static final PROGRESSBAR_TEXT_HEIGHT:I

.field private static final PROGRESSBAR_TEXT_SIZE:F

.field private static final PROGRESS_GROUP_HEIGHT:I

.field public static final REQUIRED_STORAGE_SIZE_FRONT:J = 0xa00000L

.field public static final REQUIRED_STORAGE_SIZE_REAR:J = 0x1900000L

.field private static final SELECT_FRONT_ITEM1_POS_X:I

.field private static final SELECT_FRONT_ITEM1_POS_Y:I

.field private static final SELECT_FRONT_ITEM2_POS_X:I

.field private static final SELECT_FRONT_ITEM2_POS_Y:I

.field private static final SELECT_ITEM1_POS_X:I

.field private static final SELECT_ITEM1_POS_Y:I

.field private static final SELECT_ITEM2_POS_X:I

.field private static final SELECT_ITEM2_POS_Y:I

.field private static final SELECT_ITEM3_POS_X:I

.field private static final SELECT_ITEM3_POS_Y:I

.field private static final SELECT_ITEM4_POS_X:I

.field private static final SELECT_ITEM4_POS_Y:I

.field private static final SELECT_ITEM5_POS_X:I

.field private static final SELECT_ITEM5_POS_Y:I

.field private static final SELECT_ITEM_TEXT_HEIGHT:I

.field private static final SELECT_ITEM_TEXT_MARGIN_H:I

.field private static final SELECT_ITEM_TEXT_SIZE:I

.field private static final SELECT_ITEM_TEXT_WIDTH:I

.field private static final SELECT_ITEM_TEXT_WIDTH_S:I

.field private static final SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

.field private static final SELECT_ITEM_WIDTH:I

.field private static final SELECT_MENU_BG_POS_X:I

.field private static final SELECT_MENU_BG_POS_Y:I

.field private static final SELECT_MENU_HEIGHT:I

.field private static final SELECT_MENU_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "TwGLMagicMenu"


# instance fields
.field private DEFAULT_TEXT_COLOR:I

.field private mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

.field private mBestFaceText:Lcom/sec/android/glview/TwGLText;

.field private mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

.field private mBestPhotoText:Lcom/sec/android/glview/TwGLText;

.field protected mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCaptureCount:I

.field private mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mDramaButton:Lcom/sec/android/glview/TwGLButton;

.field private mDramaText:Lcom/sec/android/glview/TwGLText;

.field private mEraserButton:Lcom/sec/android/glview/TwGLButton;

.field private mEraserText:Lcom/sec/android/glview/TwGLText;

.field private mInputPath:Ljava/lang/String;

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$OnMagicCaptureCancelListener;

.field private mMaxImageCount:I

.field private mOrientation:I

.field private mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

.field private mPicMotionText:Lcom/sec/android/glview/TwGLText;

.field private mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

.field private mSelectMode:I

.field private mTempFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x20

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_IMAGE_COUNT:I

    const/16 v0, 0x10

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_FRONT_MAX_IMAGE_COUNT:I

    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_PROGRESS_COUNT:I

    const v0, 0x7f0a02c2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESS_GROUP_HEIGHT:I

    new-array v0, v6, [I

    const v1, 0x7f0a02ba

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0a02bc

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a02be

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a02c0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_X:[I

    new-array v0, v6, [I

    const v1, 0x7f0a02bb

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0a02bd

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a02bf

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a02c1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_Y:[I

    const v0, 0x7f0a02c5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_WIDTH:I

    const v0, 0x7f0a02c6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_HEIGHT:I

    const v0, 0x7f0a02c3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESSBAR_TEXT_HEIGHT:I

    const v0, 0x7f0a02c4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    const v0, 0x7f0b004f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESSBAR_TEXT_SIZE:F

    const v0, 0x7f0a02c9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    const v0, 0x7f0a02ca

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM1_POS_X:I

    const v0, 0x7f0a02cb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM1_POS_Y:I

    const v0, 0x7f0a02ca

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM2_POS_X:I

    const v0, 0x7f0a02cc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM2_POS_Y:I

    const v0, 0x7f0a02cd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM1_POS_X:I

    const v0, 0x7f0a02ce

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM1_POS_Y:I

    const v0, 0x7f0a02cf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM2_POS_X:I

    const v0, 0x7f0a02d0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM2_POS_Y:I

    const v0, 0x7f0a02d1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    const v0, 0x7f0a02d2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    const v0, 0x7f0a02d3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    const v0, 0x7f0a02d4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    const v0, 0x7f0a02d5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    const v0, 0x7f0a02d6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    const v0, 0x7f0a02d7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    const v0, 0x7f0a02d8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    const v0, 0x7f0a02d9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    const v0, 0x7f0a02da

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    const v0, 0x7f0a02db

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    const v0, 0x7f0b005b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_SIZE:I

    const v0, 0x7f0a02c7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_BG_POS_X:I

    const v0, 0x7f0a02c8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_BG_POS_Y:I

    const/high16 v0, 0x7f0a0000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_WIDTH:I

    const v0, 0x7f0a0001

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_HEIGHT:I

    const v0, 0x7f0b0023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    const v0, 0x7f0b0024

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_PROGRESS_TEXT_SHADOW_OFFSET:I

    const v0, 0x7f090008

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_COLOR:I

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.arcsoft.magicshotstudio.Main"

    aput-object v1, v0, v2

    const-string v1, "com.arcsoft.magicshotstudio.BestFace"

    aput-object v1, v0, v3

    const-string v1, "com.arcsoft.magicshotstudio.BestPhoto"

    aput-object v1, v0, v4

    const-string v1, "com.arcsoft.magicshotstudio.Eraser"

    aput-object v1, v0, v5

    const-string v1, "com.arcsoft.magicshotstudio.Drama"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "com.arcsoft.magicshotstudio.PicMotion"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_SHOT_MODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 8

    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mMaxImageCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mInputPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mOrientation:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->DEFAULT_TEXT_COLOR:I

    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->setCaptureEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->setTouchHandled(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESSBAR_TEXT_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020244

    const v7, 0x7f020245

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v5, v5

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESSBAR_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_PROGRESS_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_COLOR:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TwGLMagicMenu"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public getCaptureProgressIncreased()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_PROGRESS_COUNT:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mMaxImageCount:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getInputString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mInputPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMagicTempFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mTempFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredStorageSize()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xa00000

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x1900000

    goto :goto_0
.end method

.method public hideCaptureLayout()V
    .locals 2

    const-string v0, "TwGLMagicMenu"

    const-string v1, "hideCaptureLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    return-void
.end method

.method public hideSelectLayout()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    return-void
.end method

.method public init()V
    .locals 14

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_X:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_Y:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_X:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_Y:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_X:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_Y:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_FRONT_MAX_IMAGE_COUNT:I

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mMaxImageCount:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_PROGRESS_COUNT:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mMaxImageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    :cond_1
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02011a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_d

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM1_POS_X:I

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_e

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM1_POS_Y:I

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v2, v12

    int-to-float v3, v13

    const v4, 0x7f020037

    const v5, 0x7f020039

    const v6, 0x7f020038

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0030

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_f

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM2_POS_X:I

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM2_POS_Y:I

    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    :cond_3
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v2, v10

    int-to-float v3, v11

    const v4, 0x7f020034

    const v5, 0x7f020036

    const v6, 0x7f020035

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0031

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02003a

    const v5, 0x7f02003c

    const v6, 0x7f02003b

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    :cond_5
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02003d

    const v5, 0x7f02003f

    const v6, 0x7f02003e

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0033

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    :cond_6
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020040

    const v5, 0x7f020042

    const v6, 0x7f020041

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0039

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    :cond_7
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    sub-int v2, v12, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v13

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0c0030

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_SIZE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->DEFAULT_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_COLOR:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    sub-int v2, v10, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v11

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0c0031

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_SIZE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->DEFAULT_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_COLOR:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    :cond_9
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0c0037

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_SIZE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->DEFAULT_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_COLOR:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    :cond_a
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0c0033

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_SIZE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->DEFAULT_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_COLOR:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    :cond_b
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0c0039

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_SIZE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->DEFAULT_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_COLOR:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(ILcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v12

    int-to-float v2, v2

    int-to-float v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v10

    int-to-float v2, v2

    int-to-float v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v12

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v13

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v10

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v11

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    int-to-float v2, v12

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v13

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    int-to-float v2, v10

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v11

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int v2, v12, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v13

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int v2, v10, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v11

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int v2, v12, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    add-int/2addr v3, v13

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int v2, v10, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    add-int/2addr v3, v11

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    sub-int v2, v12, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v13

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    sub-int v2, v10, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v11

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    const-string v0, ".magic.temp"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mTempFileName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    return-void

    :cond_c
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_IMAGE_COUNT:I

    goto/16 :goto_0

    :cond_d
    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM1_POS_X:I

    goto/16 :goto_1

    :cond_e
    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM1_POS_Y:I

    goto/16 :goto_2

    :cond_f
    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM2_POS_X:I

    goto/16 :goto_3

    :cond_10
    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM2_POS_Y:I

    goto/16 :goto_4

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int v2, v12, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v13

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    goto/16 :goto_5

    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    sub-int v2, v12, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v13

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    goto/16 :goto_6
.end method

.method public launchMagicStudio()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v15, "com.arcsoft.magicshotstudio"

    invoke-static {v14, v15}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v15, "com.arcsoft.magicshotstudio"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/Camera;->isFromGalleryForMagicshot()Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v15, "com.arcsoft.magicshotstudio"

    invoke-static {v14, v15}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v14, "com.arcsoft.magicshotstudio"

    sget-object v15, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_SHOT_MODES:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    invoke-direct {v3, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v14

    invoke-static {v14}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mInputPath:Ljava/lang/String;

    if-nez v14, :cond_4

    const-string v14, "TwGLMagicMenu"

    const-string v15, "mInputPath is null"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mInputPath:Ljava/lang/String;

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_6

    :cond_5
    const-string v14, "TwGLMagicMenu"

    const-string v15, "out file open error"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "BestFace_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v14, "TwGLMagicMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fileName: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "BestFace_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "BestPhoto_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Eraser_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Drama_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "PicMotion_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v14, "sef_file_name"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mInputPath:Ljava/lang/String;

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "select_mode"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v14

    invoke-static {v14}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v14

    invoke-static {v14}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v7

    const-string v14, "TwGLMagicMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mwidth: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "TwGLMagicMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mheight: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "image_width"

    invoke-virtual {v6, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "image_height"

    invoke-virtual {v6, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "bestphoto"

    invoke-virtual {v6, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "bestface"

    invoke-virtual {v6, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "eraser"

    invoke-virtual {v6, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "drama"

    invoke-virtual {v6, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "picmotion"

    invoke-virtual {v6, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/Camera;->isFromLockScreen()Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "createdByLockscreen"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/sec/android/app/camera/Camera;->setIsLaunchSStudio(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v14, v6}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/high16 v15, 0x7f050000

    const v16, 0x7f050001

    invoke-virtual/range {v14 .. v16}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/Camera;->isFromGalleryForMagicshot()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v15, "com.arcsoft.magicshotstudio"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public launchMagicStudio(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, v1, Lcom/sec/android/app/camera/Camera;->MAGIC_SHOT_STATE_IDLE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setMagicShotState(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->launchMagicStudio()V

    return-void
.end method

.method public onBack()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopMagicShot()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isMagicShotCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->hideSelectLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, v1, Lcom/sec/android/app/camera/Camera;->MAGIC_SHOT_STATE_IDLE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setMagicShotState(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->launchMagicStudio()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_4

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_5

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    goto :goto_1
.end method

.method public onHide()V
    .locals 2

    const-string v0, "TwGLMagicMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->hideCaptureLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->hideSelectLayout()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "TwGLMagicMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isMagicShotCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TwGLMagicMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown return, keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "TwGLMagicMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const-string v2, "TwGLMagicMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp return, keycode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isMagicShotCapturing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->cancelCaptureForMagic()V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMagicShotState()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, v3, Lcom/sec/android/app/camera/Camera;->MAGIC_SHOT_STATE_SELECT:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->reset(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, v2, Lcom/sec/android/app/camera/Camera;->MAGIC_SHOT_STATE_IDLE:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->setMagicShotState(I)V

    move v0, v1

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    const-string v0, "TwGLMagicMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mOrientation:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mOrientation:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->updateAlign()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "TwGLMagicMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$OnMagicCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$OnMagicCaptureCancelListener;->onMagicCaptureCancelled()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->reset(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->removeTempFile()V

    return-void
.end method

.method protected onShow()V
    .locals 2

    const-string v0, "TwGLMagicMenu"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->hideCaptureLayout()V

    return-void
.end method

.method public pushInputString(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mInputPath:Ljava/lang/String;

    sget-boolean v0, Lcom/sec/android/app/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TwGLMagicMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushInputString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public removeTempFile()V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "TwGLMagicMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reset(Z)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TwGLMagicMenu"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_PROGRESS_COUNT:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->setTouchHandled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->hideCaptureLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->hideSelectLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mMaxImageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    :cond_1
    return-void
.end method

.method public setCaptureProgressIncreased()V
    .locals 8

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_FRONT_MAX_IMAGE_COUNT:I

    :goto_0
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mMaxImageCount:I

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_PROGRESS_COUNT:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mMaxImageCount:I

    div-int v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v2, "TwGLMagicMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCaptureCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TwGLMagicMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->setTouchHandled(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideShutterButton()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->showCaptureLayout()V

    :cond_1
    return-void

    :cond_2
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_IMAGE_COUNT:I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "TwGLMagicMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture count calculate - finish : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setOnMagicCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$OnMagicCaptureCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$OnMagicCaptureCancelListener;

    return-void
.end method

.method public setOutputFile()V
    .locals 6

    const-string v3, "TwGLMagicMenu"

    const-string v4, "setOutputFile"

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TwGLMagicMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to Create Directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "TwGLMagicMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to Create Directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, -0xa

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/Camera;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCaptureLayout()V
    .locals 2

    const-string v0, "TwGLMagicMenu"

    const-string v1, "showCaptureLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSelectLayout(I)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "TwGLMagicMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSelectLayout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwGLMagicMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "str.length(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v5, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-eqz v1, :cond_7

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v6, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-eqz v1, :cond_a

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v7, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-eqz v1, :cond_d

    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v8, :cond_e

    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->updateAlign()V

    return-void
.end method

.method public updateAlign()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mOrientation:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
