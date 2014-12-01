.class public Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLVirtualTourMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;
.implements Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler$VirtualTourModelerEventListener;


# static fields
.field private static final ANIMATION_SPEED_FAST:I = 0x96

.field private static final ANIMATION_SPEED_SLOW:I = 0x12c

.field private static final BUTTON_TEXT_FONT_SIZE:I

.field private static final CALIBRATION_DURATION:I = 0x3

.field private static final CALIBRATION_NOTIFICATION_PER_SECOND:I = 0xe

.field private static final CALIBRATION_UPDATE_DEGREE:I = 0xc

.field private static final CALIBRATION_UPDATE_THRESHOLD_PER_SECOND:I = 0xa

.field private static final COUNTER_DISPLAY_THRESHOLD:I = 0x14

.field private static final COUNTER_INDICATOR_HEIGHT:I

.field private static final COUNTER_INDICATOR_POS_X:I

.field private static final COUNTER_INDICATOR_POS_Y:I

.field private static final COUNTER_INDICATOR_WIDTH:I

.field private static final COUNTER_TEXT_STROKE_WIDTH:I

.field private static final DONE_BUTTON_POS_X:I

.field private static final DONE_BUTTON_POS_Y:I

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_VERITCAL:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_SET_SHADOW:Z

.field private static final HELP_TEXT_SIDE_MARGIN:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_STROKE_WIDTH:I

.field private static final HELP_TEXT_WIDTH:F

.field private static final HELP_TEXT_WIDTH_VERITCAL:F

.field private static final INDICATOR_TEXT_STROKE_COLOR:I

.field private static final LEFT_INDICATOR_POS_X:[I

.field private static final LEFT_INDICATOR_POS_Y:[I

.field private static final MAX_SWEEP_COUNT:I = 0x1e

.field private static final MSG_DONE_WITHOUT_SAVING:I = 0xc9

.field private static final MSG_DONE_WITH_SAVING:I = 0xc8

.field private static final MSG_DONE_WITH_SAVING_ON_ORIENTATION_CHANGED:I = 0xca

.field private static final MSG_GUIDE_ROTATE_DEVICE_ANTICLOCKWISE:I = 0x66

.field private static final MSG_GUIDE_ROTATE_DEVICE_CLOCKWISE:I = 0x65

.field private static final MSG_SAVING_DONE:I = 0x3e8

.field private static final MSG_WARNING_APPROACHING_WALK_MAX_BOUNDARY:I = 0xcb

.field private static final MSG_WARNING_ARROW_SOUND:I = 0xcc

.field private static final PROGRESSWHEEL_CALIBRATION_HEIGHT:I

.field private static final PROGRESSWHEEL_CALIBRATION_POS_X:I

.field private static final PROGRESSWHEEL_CALIBRATION_POS_Y:I

.field private static final PROGRESSWHEEL_CALIBRATION_WIDTH:I

.field private static final PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

.field private static final PROGRESSWHEEL_CAPTURABLE_POS_X:I

.field private static final PROGRESSWHEEL_CAPTURABLE_POS_Y:I

.field private static final PROGRESSWHEEL_CAPTURABLE_WIDTH:I

.field private static final REMAIN_STEP_THRESHOLD:I = 0x6

.field private static final REQUIRED_STORAGE_SIZE:J = 0x1400000L

.field private static final RIGHT_INDICATOR_POS_X:[I

.field private static final RIGHT_INDICATOR_POS_Y:[I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

.field private static final STABILIZER_STATE_CALIBRATION:I = 0x1

.field private static final STABILIZER_STATE_CAPTURABLE:I = 0x2

.field private static final STABILIZER_STATE_INVISIBLE:I = 0x0

.field private static final STRAIGHT_INDICATOR_POS_X:[I

.field private static final STRAIGHT_INDICATOR_POS_Y:[I

.field private static final TAG:Ljava/lang/String; = "TwGLVirtualTourMenu"

.field private static final THUMBNAIL_CLOSE_BUTTON_HEIGHT:I

.field private static final THUMBNAIL_CLOSE_BUTTON_WIDTH:I

.field private static final THUMBNAIL_LIST_HEIGHT:I

.field private static final THUMBNAIL_LIST_POS_X:I

.field private static final THUMBNAIL_LIST_POS_Y:I

.field private static final THUMBNAIL_LIST_WIDTH:I

.field private static final UNDO_BUTTON_HEIGHT:I

.field private static final UNDO_BUTTON_SHADOW_OFFSET_X:F

.field private static final UNDO_BUTTON_SHADOW_OFFSET_Y:F

.field private static final UNDO_BUTTON_TEXT_ALPHA_VALUE:I

.field private static final UNDO_BUTTON_TEXT_COLOR:I

.field private static final UNDO_BUTTON_TEXT_PADDING:I

.field private static final UNDO_THRESHOLD:I = 0x2

.field private static final WARNING_ARROW_HEIGHT:I

.field private static final WARNING_ARROW_SHUTTER_POS_X:I

.field private static final WARNING_ARROW_SWING_DISTANCE:F

.field private static final WARNING_ARROW_WIDTH:I

.field private static final WARNING_TEXT_HEIGHT:F

.field private static final WARNING_TEXT_MARGIN:F

.field private static final WARNING_TEXT_SHADOW_COLOR:I

.field private static final WARNING_TEXT_SHADOW_OFFSET_Y:I

.field private static final WARNING_TEXT_WIDTH:F

.field static mPs32Direction:[I


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mBlinkingAnimation:Landroid/view/animation/Animation;

.field private mCalibrationInProgressCount:I

.field private mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

.field private mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

.field private mCapturing:Z

.field private mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mCounterText:Lcom/sec/android/glview/TwGLText;

.field private volatile mCurrentPhotoCount:I

.field private mDoneButton:Lcom/sec/android/glview/TwGLButton;

.field private mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerActiveFlag:Z

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mOrientation:I

.field private mOrientationForPicture:I

.field private mPlayWarningArrowSound:Z

.field private mProgressDegree:I

.field private mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

.field private mRemainingStepCount:I

.field private mRightIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

.field private mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

.field private mUndoButton:Lcom/sec/android/glview/TwGLButton;

.field private mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

.field private mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

.field private mWarningText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v0, 0x7f0a0000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    const v0, 0x7f0a0001

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    const v0, 0x7f0a0377

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_WIDTH:I

    const v0, 0x7f0a0378

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_HEIGHT:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_X:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_Y:I

    const v0, 0x7f0a0379

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_WIDTH:I

    const v0, 0x7f0a037a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_X:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_Y:I

    const v0, 0x7f0a0022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->DONE_BUTTON_POS_X:I

    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->DONE_BUTTON_POS_Y:I

    const v0, 0x7f0a037b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_TEXT_PADDING:I

    const v0, 0x7f0b0043

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_TEXT_ALPHA_VALUE:I

    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_TEXT_COLOR:I

    const v0, 0x7f0a037c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_HEIGHT:I

    const v0, 0x7f0b005c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    new-array v0, v6, [I

    const v3, 0x7f0a037d

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f0a037e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f0a037f

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f0a0380

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_X:[I

    new-array v0, v6, [I

    const v3, 0x7f0a0381

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f0a0382

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f0a0383

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f0a0384

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_Y:[I

    new-array v0, v6, [I

    const v3, 0x7f0a0385

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f0a0386

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f0a0387

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f0a0388

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    new-array v0, v6, [I

    const v3, 0x7f0a0389

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f0a038a

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f0a038b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f0a038c

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    new-array v0, v6, [I

    const v3, 0x7f0a038d

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f0a038e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f0a038f

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f0a0390

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_X:[I

    new-array v0, v6, [I

    const v3, 0x7f0a0391

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f0a0392

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f0a0393

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f0a0394

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const v0, 0x7f0a0395

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_POS_X:I

    const v0, 0x7f0a0396

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_POS_Y:I

    const v0, 0x7f0a0397

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_WIDTH:I

    const v0, 0x7f0a0398

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_HEIGHT:I

    const v0, 0x7f0a039d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_WIDTH:I

    const v0, 0x7f0a039e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_HEIGHT:I

    const v0, 0x7f0a0370

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    const v0, 0x7f0a039f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    const v0, 0x7f0a03a0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const v0, 0x7f0a03a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_HEIGHT:F

    const v0, 0x7f0a03a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    const v0, 0x7f0b0044

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_SHADOW_OFFSET_Y:I

    const v0, 0x7f090008

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_SHADOW_COLOR:I

    const v0, 0x7f0a03a4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_WIDTH:F

    const v0, 0x7f0a03a5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_WIDTH_VERITCAL:F

    const v0, 0x7f0a03a6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT:F

    const v0, 0x7f0a03a7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    const v0, 0x7f0a007d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_POS_X:F

    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_POS_Y:F

    const v0, 0x7f0b0050

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIZE:F

    const v0, 0x7f0b0027

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_STROKE_WIDTH:I

    const v0, 0x7f0b0028

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SET_SHADOW:Z

    const v0, 0x7f0b001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    const/high16 v0, 0x7f090000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->INDICATOR_TEXT_STROKE_COLOR:I

    const v0, 0x7f0a039b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_WIDTH:I

    const v0, 0x7f0a039c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_WIDTH:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_POS_X:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_POS_Y:F

    float-to-int v0, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_POS_Y:I

    const v0, 0x7f0b0027

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_TEXT_STROKE_WIDTH:I

    const v0, 0x7f0b0041

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_SHADOW_OFFSET_X:F

    const v0, 0x7f0b0042

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_SHADOW_OFFSET_Y:F

    const v0, 0x7f0a03ac

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_CLOSE_BUTTON_WIDTH:I

    const v0, 0x7f0a03ad

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_CLOSE_BUTTON_HEIGHT:I

    new-array v0, v1, [I

    aput v2, v0, v2

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPs32Direction:[I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 15

    const/4 v6, 0x6

    const/4 v7, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/android/glview/TwGLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientationForPicture:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mShowAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRemainingStepCount:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandlerActiveFlag:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPlayWarningArrowSound:Z

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setCaptureEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setTouchHandled(Z)V

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c025b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_TEXT_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v14, v1, v2

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    sub-int v13, v1, v14

    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    int-to-float v3, v13

    const/4 v4, 0x0

    int-to-float v5, v14

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v14

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_HEIGHT:I

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c025b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_TEXT_COLOR:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    const/4 v6, 0x1

    const v7, 0x7f090020

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIIZIZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getText()Lcom/sec/android/glview/TwGLText;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_SHADOW_OFFSET_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_SHADOW_OFFSET_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c025b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    int-to-float v3, v14

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    const/4 v3, 0x0

    int-to-float v4, v14

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->DONE_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->DONE_BUTTON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f0202a1

    const v6, 0x7f0202a2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c018a

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0204c5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0204c7

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0204c6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0204c8

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_POS_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_WIDTH:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_WIDTH:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v6, v6

    const-string v7, ""

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v8, v8

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setOnThumbnailListCloseListener(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_CLOSE_BUTTON_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_CLOSE_BUTTON_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f0202cd

    const v8, 0x7f0202cf

    const v9, 0x7f0202ce

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c02a4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    const v7, 0x7f0201f2

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_HEIGHT:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const v7, 0x7f0201ef

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    const v7, 0x7f0201f0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    const v7, 0x7f0201f1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    const/4 v11, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v11, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_HEIGHT:F

    const v7, 0x7f0c01ba

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_SHADOW_OFFSET_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_SHADOW_COLOR:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_WIDTH:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT:F

    const v7, 0x7f0c0134

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SET_SHADOW:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_POS_Y:F

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setCenterPivot(Z)V

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setCenterPivot(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0204c9

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->moveBaseLayout(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    invoke-direct {v1}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLUtil;->getBlinkAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandlerActiveFlag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    return v0
.end method

.method static synthetic access$1408(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setRemainCounter()V

    return-void
.end method

.method static synthetic access$1602(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientationForPicture:I

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I

    return v0
.end method

.method static synthetic access$1808(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I

    return v0
.end method

.method static synthetic access$1912(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setWarningArrowVisibleState(ZI)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(IZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->restart()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRemainingStepCount:I

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPlayWarningArrowSound:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->resetStabilizer()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setProgress(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method private calculateOrientationForPicture(I)I
    .locals 3

    move v0, p1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

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
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

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

.method private getAnimation(I)Landroid/view/animation/AnimationSet;
    .locals 8

    const/4 v6, 0x0

    const/high16 v5, -0x40800000

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v6, v2, v6, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_WIDTH:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_HEIGHT:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-object v1

    :pswitch_0
    const/4 v2, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float v3, v5, v4

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    goto :goto_0

    :pswitch_2
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float v2, v5, v4

    const/4 v3, 0x0

    goto :goto_0

    :pswitch_3
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    const/4 v3, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onDone(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x4

    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "onDone"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandlerActiveFlag:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setEditableSideBarDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideThumbnailButton()V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    invoke-direct {p0, v3, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setWarningArrowVisibleState(ZI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->horizonIndicatorUpdate(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->resetList()V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->saveSEFFile()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0134

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->restart()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->prepareDirectories()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->resetContinuousFileSequence()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->on3DTourComplete()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->stop()V

    goto :goto_2
.end method

.method private prepareDirectories()V
    .locals 8

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_0
    const-string v6, "TwGLVirtualTourMenu"

    const-string v7, "prepareDirectories return because of null pointer"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v6

    const-string v7, "/.3DTour"

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_1

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private resetStabilizer()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setProgress(I)V

    return-void
.end method

.method private restart()V
    .locals 9

    const/4 v5, 0x1

    const/high16 v6, 0x42780000

    const/high16 v7, 0x42360000

    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "restart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "Return because of null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x1

    :goto_1
    const/16 v0, 0x27

    if-gt v8, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandlerActiveFlag:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->restart(IIIIIFF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->restart(IIIIIFF)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->restart(IIIIIFF)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->restart(IIIIIFF)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private saveSEFFile()V
    .locals 12

    const/16 v2, 0xbea

    const-string v0, "TwGLVirtualTourMenu"

    const-string v10, "saveSEFFile"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TwGLVirtualTourMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Total Photos:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    const-string v0, "TwGLVirtualTourMenu"

    const-string v10, "mActivityContext is NULL!"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v11, 0x7f0c000f

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    const/16 v10, 0x64

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgressMax(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->showPostCaptureLayout()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->hideCaptureLayout()V

    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    iget-object v0, v8, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ".jpg"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    const-string v10, "/.3DTour"

    invoke-static {v0, v10}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgress(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->saveTour(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method private setProgress(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setProgress(I)V

    return-void
.end method

.method private setRemainCounter()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setStabilizerVisibleState(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setStabilizerVisibleState(IZ)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setWarningArrowVisibleState(ZI)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0a03a3

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xcc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_8

    packed-switch p2, :pswitch_data_0

    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPlayWarningArrowSound:Z

    :goto_0
    return-void

    :pswitch_0
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-nez v3, :cond_1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float v1, v3, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v10

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c01ba

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3, v8, v8}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPlayWarningArrowSound:Z

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xcc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-ne v3, v8, :cond_2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    add-float v1, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float/2addr v3, v4

    sub-float v2, v3, v0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v10

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-ne v3, v9, :cond_3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float/2addr v3, v4

    sub-float v1, v3, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float v2, v3, v4

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v10

    invoke-direct {p0, v10}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v10

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-ne v3, v10, :cond_0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    add-float v2, v3, v4

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v10

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_1
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-nez v3, :cond_5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float v1, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float/2addr v3, v4

    sub-float v2, v3, v0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v10

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c01bb

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3, v8, v8}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPlayWarningArrowSound:Z

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xcc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_5
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-ne v3, v8, :cond_6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    add-float v1, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    add-float v2, v3, v4

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v10

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-ne v3, v9, :cond_7

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    add-float v1, v3, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float v2, v3, v4

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v10

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    :cond_7
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-ne v3, v10, :cond_4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float/2addr v3, v4

    sub-float v1, v3, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    add-float v2, v3, v4

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v10

    invoke-direct {p0, v10}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v10

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v10

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    :cond_9
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPlayWarningArrowSound:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private start()V
    .locals 11

    const/4 v5, 0x1

    const/high16 v8, 0x42780000

    const/high16 v9, 0x42360000

    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "Return because of null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v10, 0x1

    :goto_1
    const/16 v0, 0x27

    if-gt v10, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandlerActiveFlag:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "return because of null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->start(IIIIIIIFF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x4

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->start(IIIIIIIFF)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x3

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->start(IIIIIIIFF)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->start(IIIIIIIFF)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    if-nez v0, :cond_0

    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "Return because of null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    invoke-virtual {v0}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getRequiredStorageSize()J
    .locals 2

    const-wide/32 v0, 0x1400000

    return-wide v0
.end method

.method public hideCaptureLayout()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->resetList()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setVisibility(I)V

    invoke-direct {p0, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setWarningArrowVisibleState(ZI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    return-void
.end method

.method public horizonIndicatorUpdate(FF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    return-void
.end method

.method public onBack()V
    .locals 2

    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "onBack"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v3, 0x1

    const-string v4, "TwGLVirtualTourMenu"

    const-string v5, "onClick"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->removeLastThumbnail()V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    const-string v5, "/.3DTour"

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "3DTour_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->reduceContinuousFileSequence()V

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v3}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    :cond_1
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c0134

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v3}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    invoke-virtual {v4}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->onUndo()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setRemainCounter()V

    :goto_0
    return v3

    :cond_3
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onHide()V
    .locals 2

    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->hideCaptureLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->stop()V

    return-void
.end method

.method public onImageStoringCompleted()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->updateCapturingStatus(Z)V

    return-void
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TwGLVirtualTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back button pressed current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOnThumbnailListCloseListener(Lcom/sec/android/glview/TwGLView;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->startAnimation()V

    :cond_1
    return-void
.end method

.method public onOrientationChangedEngine(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    const-string v0, "TwGLVirtualTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChangedEngine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->hideCaptureLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->stop()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->start()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->showCaptureLayout()V

    return-void
.end method

.method public onShow()V
    .locals 3

    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->prepareDirectories()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->resetStabilizer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->getInstance()Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->setStackStateListener(Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler$VirtualTourModelerEventListener;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    const-string v0, "TwGLVirtualTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->start()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->showCaptureLayout()V

    return-void
.end method

.method public onStateChanged(II)V
    .locals 3

    const/16 v0, 0x28

    if-ne p1, v0, :cond_0

    const-string v0, "TwGLVirtualTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remaining StepCount - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRemainingStepCount:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->showThumbnailList()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public postSEFEncode(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 12

    const-string v0, "TwGLVirtualTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->prepareDirectories()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgress(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x5

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "_display_name"

    invoke-virtual {v11, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "datetaken"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "mime_type"

    const-string v1, "image/jpeg"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_data"

    invoke-virtual {v11, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "height"

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "width"

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "orientation"

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientationForPicture:I

    mul-int/lit8 v1, v1, 0x5a

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->calculateOrientationForPicture(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "sef_file_type"

    const/16 v1, 0x850

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string v0, "latitude"

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v0, "longitude"

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgress(I)V

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientationForPicture:I

    mul-int/lit8 v1, v1, 0x5a

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->calculateOrientationForPicture(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeType()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/ContextProviderUtils;->getTakePhotoSet(Ljava/lang/String;IIILandroid/net/Uri;III)Landroid/os/Bundle;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0, v4, v9}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "reviewon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    mul-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getOriginalViewFinderWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getOriginalViewFinderHeight()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v1

    invoke-static {p2, v1}, Lcom/sec/android/app/camera/Util;->makeBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientationForPicture:I

    mul-int/lit8 v2, v2, 0x5a

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->calculateOrientationForPicture(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->showCaptureLayout()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v8

    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "Something is wrong to update media"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public showCaptureLayout()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setRemainCounter()V

    return-void
.end method

.method public showThumbnailList()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->startAnimation()V

    return-void
.end method

.method public updateThumbnail([B)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPs32Direction:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientationForPicture:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->addThumbnail([BII)V

    return-void
.end method
