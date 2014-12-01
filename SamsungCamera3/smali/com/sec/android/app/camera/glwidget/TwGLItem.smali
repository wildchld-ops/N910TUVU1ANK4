.class public Lcom/sec/android/app/camera/glwidget/TwGLItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field private static final CHECKBOX_POS_Y:I

.field public static final COVERMODE_TYPE:I = 0x7

.field private static final COVERMODE_TYPE_BUTTON_HEIGHT:I

.field private static final COVERMODE_TYPE_BUTTON_WIDTH:I

.field public static final EASYMODE_TYPE:I = 0x6

.field private static final EASYMODE_TYPE_BUTTON_HEIGHT:I

.field private static final EASYMODE_TYPE_BUTTON_WIDTH:I

.field private static final EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

.field public static final EDITABLESHORTCUT_TYPE:I = 0x1

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

.field private static final EDITABLESHORTCUT_TYPE_FONT_SIZE:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

.field public static final EDITSETTINGS_TYPE:I = 0x8

.field private static final EDIT_SETTING_TYPE_BUTTON_HEIGHT:I

.field private static final EDIT_SETTING_TYPE_BUTTON_WIDTH:I

.field public static final EFFECT_TYPE:I = 0x5

.field private static final EFFECT_TYPE_BUTTON_MARGIN:I

.field private static final EFFECT_TYPE_BUTTON_WIDTH:I

.field private static final EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

.field private static final EFFECT_TYPE_TEXT_HEIGHT:I

.field private static final EFFECT_TYPE_TEXT_SHADOW_Y_POS:I

.field private static EFFECT_TYPE_TEXT_SIZE:I = 0x0

.field private static final EFFECT_TYPE_TEXT_SIZE_SWA:I

.field private static final EFFECT_TYPE_TEXT_WIDTH:I

.field private static final EFFECT_TYPE_TEXT_X:I

.field private static final EFFECT_TYPE_TEXT_Y:I

.field public static final FAVORITE_SETTINGS_TYPE:I = 0xa

.field private static final FAVORITE_SETTING_TYPE_BUTTON_HEIGHT:I

.field private static final FAVORITE_SETTING_TYPE_BUTTON_WIDTH:I

.field private static final FAVORITE_SETTING_TYPE_PADDING_LEFT:I

.field private static final FAVORITE_SETTING_TYPE_PADDING_TOP:I

.field private static final FIRST_ITEM:I = 0x0

.field public static final LANDSCAPE:I = 0xa

.field private static final LIST_SELECTOR_HIGHLIGHT_COLOR:I

.field public static final LIST_TYPE:I = 0x0

.field private static final LIST_TYPE_ANCHOR_POS_Y:I

.field private static final LIST_TYPE_BUTTON_HEIGHT:I

.field private static final LIST_TYPE_BUTTON_WIDTH:I

.field private static final LIST_TYPE_IMAGE_LEFT_PADDING:I

.field private static final LIST_TYPE_IMAGE_TOP_PADDING:I

.field private static final LIST_TYPE_LEFT_PADDING:I

.field private static final LIST_TYPE_TEXT_FONT_COLOR:I

.field private static final LIST_TYPE_TEXT_FONT_SIZE:I

.field private static final LIST_TYPE_TEXT_HEIGHT:I

.field private static final LIST_TYPE_TEXT_POS_X:I

.field private static final LIST_TYPE_TEXT_POS_Y:I

.field private static final LIST_TYPE_TEXT_WIDTH:I

.field public static final PORTRAIT:I = 0xb

.field private static final ROTATE_ANIMATION_DURATION:I = 0x12c

.field private static final SEPARATOR_HEIGHT:I

.field public static final SETTINGS_TYPE:I = 0x3

.field private static final SETTING_MODE_VALUE_COLOR:I

.field private static final SETTING_TYPE_BUTTON_HEIGHT:I

.field private static final SETTING_TYPE_BUTTON_IMAGE_POS_Y:I

.field private static final SETTING_TYPE_BUTTON_WIDTH:I

.field private static final SETTING_TYPE_FONT_SIZE:I

.field private static final SETTING_TYPE_FONT_SIZE_SWA:I

.field private static final SETTING_TYPE_MODE_FONT_SIZE:I

.field private static final SETTING_TYPE_MODE_FONT_SIZE_SWA:I

.field private static final SETTING_TYPE_MODE_TEXT_HEIGHT:I

.field private static final SETTING_TYPE_MODE_TEXT_LEFT_PADDING:I

.field private static final SETTING_TYPE_MODE_TEXT_WIDTH:I

.field private static final SETTING_TYPE_TEXT_HEIGHT:I

.field private static final SETTING_TYPE_TEXT_HEIGHT_SWA:I

.field private static final SETTING_TYPE_TEXT_LEFT_PADDING:I

.field private static final SETTING_TYPE_TEXT_LEFT_PADDING_SWA:I

.field private static final SETTING_TYPE_TEXT_TOP_PADDING:I

.field private static final SETTING_TYPE_TEXT_WIDTH:I

.field private static final SETTING_TYPE_TEXT_WIDTH_SWA:I

.field private static final SETTING_TYPE_TOP_PADDING:I

.field public static final SIDEBAR_ITEM_TYPE:I = 0x2

.field private static final SIDEBAR_TYPE_BUTTON_HEIGHT:I

.field private static final SIDEBAR_TYPE_BUTTON_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "TwGLItem"

.field public static final THUMBNAIL_TYPE:I = 0x4

.field private static final THUMBNAIL_TYPE_BUTTON_HEIGHT:I

.field private static final THUMBNAIL_TYPE_BUTTON_MARGIN:I

.field private static final THUMBNAIL_TYPE_BUTTON_WIDTH:I

.field private static final THUMBNAIL_TYPE_TEXT_HEIGHT:I

.field private static final THUMBNAIL_TYPE_TEXT_SIZE:I

.field private static final THUMBNAIL_TYPE_TEXT_WIDTH:I

.field private static final THUMBNAIL_TYPE_TEXT_X:I

.field private static final THUMBNAIL_TYPE_TEXT_Y:I

.field public static final TOPBAR_ITEM_TYPE:I = 0x9

.field private static final TOPBAR_TYPE_BUTTON_HEIGHT:I = 0xa0

.field private static final TOPBAR_TYPE_BUTTON_WIDTH:I = 0xa0

.field public static final UNKNOWN_TYPE:I = -0x1


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private mCurrentType:I

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

.field private mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

.field private mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

.field private mDimmed:Z

.field private mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

.field private mExtra:I

.field private mHeight:F

.field private mModeText:Lcom/sec/android/glview/TwGLText;

.field private mSelected:Z

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

.field private mSettingTopPadding:I

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

.field private mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

.field private mToggle:Z

.field private mZOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v2, 0x7f0a01c1

    const/4 v0, 0x1

    const v1, 0x7f0a00f0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    const v1, 0x7f0a00f1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    const v1, 0x7f0a00f4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_X:I

    const v1, 0x7f0a00f5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_Y:I

    const v1, 0x7f0a00f6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    const v1, 0x7f0a00f7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    const v1, 0x7f0b0047

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    const v1, 0x7f09000c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    const v1, 0x7f0a00f8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_ANCHOR_POS_Y:I

    const v1, 0x7f0a00f2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_IMAGE_LEFT_PADDING:I

    const v1, 0x7f0a00f3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_IMAGE_TOP_PADDING:I

    const v1, 0x7f0a00f9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_LEFT_PADDING:I

    const v1, 0x7f0a00fa

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->CHECKBOX_POS_Y:I

    const v1, 0x7f0a0017

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBAR_TYPE_BUTTON_WIDTH:I

    const v1, 0x7f0a0018

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBAR_TYPE_BUTTON_HEIGHT:I

    const v1, 0x7f0a0195

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_TYPE_BUTTON_WIDTH:I

    const v1, 0x7f0a0196

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_TYPE_BUTTON_HEIGHT:I

    const v1, 0x7f0a0019

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->COVERMODE_TYPE_BUTTON_WIDTH:I

    const v1, 0x7f0a001a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->COVERMODE_TYPE_BUTTON_HEIGHT:I

    const v1, 0x7f0a010b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

    const v1, 0x7f0a010c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

    const v1, 0x7f0a010d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

    const v1, 0x7f0a010e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

    const v1, 0x7f0a010f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    const v1, 0x7f0a0110

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    const v1, 0x7f0a0111

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

    const v1, 0x7f0a0112

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

    const v1, 0x7f0b0048

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_FONT_SIZE:I

    const v1, 0x7f0b0029

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    const v0, 0x7f0a0113

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    const v0, 0x7f0a017a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    const v0, 0x7f0a017b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_HEIGHT:I

    const v0, 0x7f0a017c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    const v0, 0x7f0a0180

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_X:I

    const v0, 0x7f0a0181

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_Y:I

    const v0, 0x7f0a017e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_WIDTH:I

    const v0, 0x7f0a017f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_HEIGHT:I

    const v0, 0x7f0a011c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_SIZE:I

    const v0, 0x7f0a0348

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    const v0, 0x7f0a0114

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_MARGIN:I

    const v0, 0x7f0a0115

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

    const v0, 0x7f0a0116

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    const v0, 0x7f0a0117

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_Y:I

    const v0, 0x7f0a0118

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    const v0, 0x7f0a0119

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    const v0, 0x7f0a011a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE:I

    const v0, 0x7f0a011b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE_SWA:I

    const v0, 0x7f0a04d4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SHADOW_Y_POS:I

    const v0, 0x7f09000d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    const v0, 0x7f09001a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_MODE_VALUE_COLOR:I

    const v0, 0x7f0a00fb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_FONT_SIZE:I

    const v0, 0x7f0a00fc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_FONT_SIZE_SWA:I

    const v0, 0x7f0a00fd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_FONT_SIZE:I

    const v0, 0x7f0a00fe

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_FONT_SIZE_SWA:I

    const v0, 0x7f0a00ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_LEFT_PADDING:I

    const v0, 0x7f0a0100

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_LEFT_PADDING_SWA:I

    const v0, 0x7f0a0101

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_TOP_PADDING:I

    const v0, 0x7f0a0102

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    const v0, 0x7f0a0103

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_HEIGHT:I

    const v0, 0x7f0a0104

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH_SWA:I

    const v0, 0x7f0a0105

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_HEIGHT_SWA:I

    const v0, 0x7f0a0108

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_HEIGHT:I

    const v0, 0x7f0a0106

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_LEFT_PADDING:I

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_WIDTH:I

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_WIDTH:I

    const v0, 0x7f0a01c2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    const v0, 0x7f0a0109

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_IMAGE_POS_Y:I

    const v0, 0x7f0a010a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TOP_PADDING:I

    const v0, 0x7f0a01a7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDIT_SETTING_TYPE_BUTTON_WIDTH:I

    const v0, 0x7f0a01a8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDIT_SETTING_TYPE_BUTTON_HEIGHT:I

    const v0, 0x7f0a01cb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->FAVORITE_SETTING_TYPE_BUTTON_WIDTH:I

    const v0, 0x7f0a01cc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->FAVORITE_SETTING_TYPE_BUTTON_HEIGHT:I

    const v0, 0x7f0a01cd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->FAVORITE_SETTING_TYPE_PADDING_LEFT:I

    const v0, 0x7f0a01ce

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->FAVORITE_SETTING_TYPE_PADDING_TOP:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    invoke-virtual {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;II)V
    .locals 6

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mHeight:F

    iput p9, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mExtra:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    invoke-virtual {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    invoke-virtual {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 8

    const v4, 0x7f0203dc

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    move-object v1, p1

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const-string v1, "      "

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->diableDrag()V

    return-void
.end method

.method private clearContent()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    :cond_7
    return-void
.end method

.method private diableDrag()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setDraggable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setDraggable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setDraggable(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setDraggable(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setDraggable(Z)V

    :cond_5
    return-void
.end method

.method private initContents(I)V
    .locals 21

    const/16 v20, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v1, :cond_1b

    if-nez p1, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSizeSpecified:Z

    if-eqz v1, :cond_19

    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getHeight()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v1, v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c0096

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00d0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x14c0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/16 v9, 0xbac

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c009d

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00d0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xf90

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/16 v9, 0xbac

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00a4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00d0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xba0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/16 v9, 0xba0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c009f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00d0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xcc0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/16 v9, 0x990

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00a1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00d0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xcc0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/16 v9, 0x72c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00af

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00d0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x800

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/16 v9, 0x480

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00aa

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00d0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xa00

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/16 v9, 0x5a0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00b1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00d0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x780

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/16 v9, 0x5a0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00b2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00d0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x780

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/16 v9, 0x438

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00bd

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00d0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x5a0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/16 v9, 0x5a0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00ce

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00d0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xf00

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/16 v9, 0x870

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00cf

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00d0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xa00

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/16 v9, 0x5a0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00c6

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00d0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x780

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/16 v9, 0x438

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00c7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00d0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x500

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/16 v9, 0x2d0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00c1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00cb

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c00d0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x280

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const/16 v9, 0x1e0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mContentDescription:Ljava/lang/String;

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-nez v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v1, :cond_14

    const/4 v7, 0x0

    const/4 v1, 0x3

    move/from16 v0, p1

    if-eq v0, v1, :cond_12

    const/16 v1, 0x8

    move/from16 v0, p1

    if-ne v0, v1, :cond_30

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getAbbTitleId()I

    move-result v19

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v1

    if-eqz v1, :cond_31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v7

    :goto_4
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    move/from16 v0, p1

    if-eq v0, v1, :cond_13

    const/16 v1, 0x8

    move/from16 v0, p1

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setTextFont(Landroid/graphics/Typeface;)V

    :cond_13
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_33

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    :cond_14
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-nez v1, :cond_15

    if-nez p1, :cond_15

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_ANCHOR_POS_Y:I

    int-to-float v3, v3

    sub-float v3, v5, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->CHECKBOX_POS_Y:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v8

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;-><init>(Lcom/sec/android/app/camera/Camera;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setBypassTouch(Z)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v1, :cond_16

    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_16

    new-instance v8, Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v13, v1

    const v14, 0x7f0204df

    move v12, v5

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->diableDrag()V

    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    invoke-direct {v2, v3, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setPaddings(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setObjectTag(I)V

    :cond_18
    return-void

    :cond_19
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1b
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_21

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v8

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    :cond_1c
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v7

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setExtraDescription(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setObjectTag(I)V

    :cond_1d
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_X:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    int-to-float v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    int-to-float v6, v8

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_Y:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_WIDTH:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_HEIGHT:I

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_SIZE:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;-><init>(Lcom/sec/android/app/camera/Camera;FFFFFFFFILcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const v2, 0x7f090008

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setTextShadow(Z)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setBypassTouch(Z)V

    move v6, v15

    move/from16 v5, v20

    goto/16 :goto_2

    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v1, v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v1, :cond_20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    :cond_21
    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_29

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mExtra:I

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v1, :cond_22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v1

    if-eqz v1, :cond_25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v7

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v1

    if-eqz v1, :cond_26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v18

    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v1, :cond_23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setExtraDescription(Z)V

    const/16 v1, 0x3e8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    if-eq v1, v2, :cond_27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setObjectTag(Ljava/lang/String;)V

    :cond_23
    :goto_9
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSWALanguage()Z

    move-result v1

    if-eqz v1, :cond_24

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE_SWA:I

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE:I

    :cond_24
    sget v17, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_Y:I

    sget v16, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mExtra:I

    if-nez v1, :cond_28

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

    int-to-float v4, v4

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v6, v8

    const/4 v7, 0x0

    move/from16 v0, v17

    int-to-float v8, v0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v9, v9

    move/from16 v0, v16

    int-to-float v10, v0

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;-><init>(Lcom/sec/android/app/camera/Camera;FFFFFFFFILcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

    add-int/2addr v4, v8

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

    add-int/2addr v4, v8

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x1

    const v3, 0x40490fdb

    const/4 v4, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SHADOW_Y_POS:I

    int-to-float v5, v8

    const v6, 0x7f090008

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setShadowLayer(ZFFFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setBypassTouch(Z)V

    move v6, v15

    move/from16 v5, v20

    goto/16 :goto_2

    :cond_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_7

    :cond_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_8

    :cond_27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setObjectTag(I)V

    goto/16 :goto_9

    :cond_28
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_MARGIN:I

    int-to-float v4, v4

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v6, v8

    const/4 v7, 0x0

    move/from16 v0, v17

    int-to-float v8, v0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v9, v9

    move/from16 v0, v16

    int-to-float v10, v0

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;-><init>(Lcom/sec/android/app/camera/Camera;FFFFFFFFILcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_MARGIN:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_MARGIN:I

    add-int/2addr v4, v8

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_MARGIN:I

    add-int/2addr v4, v8

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    goto/16 :goto_a

    :cond_29
    const/16 v1, 0x9

    move/from16 v0, p1

    if-ne v0, v1, :cond_2c

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43200000

    const/high16 v6, 0x43200000

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    move/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;-><init>(Lcom/sec/android/app/camera/Camera;FFFFII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v1, v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTitle(Ljava/lang/String;)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setObjectTag(I)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-nez v1, :cond_2a

    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v1, :cond_34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getWidth()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getHeight()F

    move-result v6

    goto/16 :goto_2

    :cond_2b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTitle(Ljava/lang/String;)V

    goto :goto_b

    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSizeSpecified:Z

    if-eqz v1, :cond_2e

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getHeight()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    move/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;-><init>(Lcom/sec/android/app/camera/Camera;FFFFII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    :goto_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v1, v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTitle(Ljava/lang/String;)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setObjectTag(I)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-nez v1, :cond_2d

    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :cond_2d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v1, :cond_34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getWidth()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getHeight()F

    move-result v6

    goto/16 :goto_2

    :cond_2e
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v8

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;-><init>(Lcom/sec/android/app/camera/Camera;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    goto/16 :goto_c

    :cond_2f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTitle(Ljava/lang/String;)V

    goto :goto_d

    :cond_30
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v19

    goto/16 :goto_3

    :cond_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v1, v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v1, :cond_32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :cond_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :cond_33
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_5

    :cond_34
    move v6, v15

    move/from16 v5, v20

    goto/16 :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/glview/TwGLView;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clearContent()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    return-void
.end method

.method public getButtonType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    return v0
.end method

.method public getCommand()Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    return-object v0
.end method

.method public getCommandId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x63

    goto :goto_0
.end method

.method public getContentType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    return v0
.end method

.method public getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method

.method public getScrollHint()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelected()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getSelected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->getSelected()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getChecked()Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    goto :goto_0
.end method

.method public isDim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    return v0
.end method

.method public isEffectMenuSelected()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onButtonHighlightChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setColor(I)V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 8

    const/high16 v7, 0x40000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isCameraZoomrMenuOpened()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isThumbnailListMenuOpened()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->isEffectMenuSelected()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->hideEffectThumbnailList()V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_5
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isAnimationFinished()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_6
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0x1b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v3

    if-eqz v3, :cond_7

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setSelectedMenuId(I)V

    :cond_7
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0x1c21

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v3

    if-eqz v3, :cond_8

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;->setSelectedMenuId(I)V

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_9

    const-string v3, "TwGLItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Execute Menu!!!!, CurrentType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CommandId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/MenuCommand;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/MenuCommand;->setLaunchType(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/command/MenuCommand;->setLaunchPosition(FF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result v2

    :cond_9
    move v3, v2

    goto/16 :goto_0
.end method

.method protected onDraw()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getRotatable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v2, v0}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw()V

    :cond_1
    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnFocusListener;->onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    const/16 v3, 0x63

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v4, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v4, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSubTitle(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public resetSettingsText()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLText;->setBoldColor(ZI)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    return-void
.end method

.method public setContentType(I)V
    .locals 8

    const v7, 0x7f0a001b

    const/16 v3, 0x12c

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setAlpha(F)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_0

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_IMAGE_LEFT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_IMAGE_TOP_PADDING:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    invoke-static {}, Lcom/sec/android/app/camera/Util;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_LEFT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayout(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->resetSize()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextPosition(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setMargin(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    :cond_b
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_IMAGE_POS_Y:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextPosition(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSWALanguage()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH_SWA:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_HEIGHT_SWA:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_FONT_SIZE_SWA:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_LEFT_PADDING_SWA:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_TOP_PADDING:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSWALanguage()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_FONT_SIZE_SWA:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_MODE_VALUE_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_LEFT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_TOP_PADDING:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setModeText(Lcom/sec/android/glview/TwGLText;)V

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    :cond_f
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDIT_SETTING_TYPE_BUTTON_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDIT_SETTING_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDIT_SETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    goto/16 :goto_3

    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_LEFT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_TOP_PADDING:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    goto/16 :goto_4

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    goto/16 :goto_5

    :cond_12
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->FAVORITE_SETTING_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->FAVORITE_SETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->FAVORITE_SETTING_TYPE_PADDING_LEFT:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->FAVORITE_SETTING_TYPE_PADDING_TOP:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    :cond_13
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, v6, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBAR_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBAR_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f0a001c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_14
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimationDuration(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    goto/16 :goto_2

    :cond_15
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f0a001c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_16
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimationDuration(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    goto/16 :goto_2

    :cond_17
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->COVERMODE_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->COVERMODE_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f0a001c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_18
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimationDuration(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    goto/16 :goto_2

    :cond_19
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const/high16 v1, 0x43200000

    const/high16 v2, 0x43200000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f0a001c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_1a
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimationDuration(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    goto/16 :goto_2
.end method

.method public setDim(Z)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x9

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setDim(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setDim(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setDim(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setDim(Z)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setDim(Z)V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setDim(Z)V

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setMute(Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setMute(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setMute(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getButton()Lcom/sec/android/glview/TwGLSelectButton;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->setNextFocusUpId(I)V

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->getButton()Lcom/sec/android/glview/TwGLSelectButton;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->setNextFocusUpId(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpId(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_8
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    goto :goto_0
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_8
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    return-void
.end method

.method public setSize(FF)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto :goto_0
.end method

.method public setToggleButton()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setToggleButton()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->setToggleButton()V

    :cond_1
    return-void
.end method

.method public setZOrder(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    return-void
.end method
