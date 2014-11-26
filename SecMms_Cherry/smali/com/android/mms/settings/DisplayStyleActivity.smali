.class public abstract Lcom/android/mms/settings/DisplayStyleActivity;
.super Landroid/app/Activity;
.source "DisplayStyleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final BACKGROUND_STYLE:I = 0x1

.field protected static final BG_STYLE_ID:[I

.field protected static final BUBBLE_BG_ID:[I

.field protected static final BUBBLE_RECEIVE_STYLE_ID:[I

.field protected static final BUBBLE_SEND_STYLE_ID:[I

.field protected static final BUBBLE_STYLE:I = 0x0

.field protected static final CUSTOM2_BG_STYLE_ID:[I

.field protected static final CUSTOM2_BUBBLE_BG_ID:[I

.field protected static final CUSTOM_BG_STYLE_ID:[I

.field protected static final CUSTOM_BUBBLE_BG_ID:[I

.field public static CUSTOM_ITEM_INDEX:I = 0x0

.field protected static final FESTIVAL_CUSTOM2_BG_STYLE_ID:[I

.field protected static final FESTIVAL_CUSTOM2_BUBBLE_BG_ID:[I

.field protected static final FESTIVAL_CUSTOM_BG_STYLE_ID:[I

.field protected static final FESTIVAL_CUSTOM_BUBBLE_BG_ID:[I

.field protected static final FESTIVAL_JPN_CUSTOM2_BG_STYLE_ID:[I

.field protected static final FESTIVAL_JPN_CUSTOM2_BUBBLE_BG_ID:[I

.field protected static final FESTIVAL_JPN_CUSTOM_BG_STYLE_ID:[I

.field protected static final FESTIVAL_JPN_CUSTOM_BUBBLE_BG_ID:[I

.field protected static final FESTIVAL_JPN_PREVIEW2_BG_ID:[I

.field protected static final FESTIVAL_JPN_PREVIEW_BG_ID:[I

.field private static final ITEM_BETWEEN_GAP:I = 0xa

.field private static final ITEM_BETWEEN_GAP_LAND:I = 0xa

.field protected static final ITEM_WIDTH:I = 0x64

.field private static final JAPAN_HOLIDAY_PROJECTION:[Ljava/lang/String;

.field private static final JAPAN_HOLIDAY_URI:Landroid/net/Uri;

.field private static KEY_FESTIVAL_EFFECT_ENABLED:Ljava/lang/String; = null

.field private static KEY_FESTIVAL_EFFECT_MESSAGES_BACKGROUND_ENABLED:Ljava/lang/String; = null

.field protected static final MENU_SELECTION_CANCEL:I = 0x2

.field protected static final MENU_SELECTION_SAVE:I = 0x1

.field public static final NEW_CUSTOM_ITEM_INDEX:I = 0x0

.field public static final NOT_FESTIVAL_DAY:I = -0x1

.field private static final SIDE_PADDING:I = 0xa

.field private static final SIDE_PADDING_LAND:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Mms/DisplayStyleActivity"

.field protected static mActionBar:Landroid/app/ActionBar; = null

.field protected static mBGImageArray:[I = null

.field protected static mBGStyleArray:[I = null

.field protected static mCancelButton:Landroid/widget/Button; = null

.field protected static mFestivalBGImageArray:[I = null

.field private static mGridHeightLand:I = 0x0

.field protected static mGridWidth:I = 0x0

.field protected static mIsCustomItemExist:Z = false

.field protected static mMaxItemCount:I = 0x0

.field public static mNewFestivalItemIdx:I = 0x0

.field private static final mReceivedBubbleIds:[I

.field protected static mSaveButton:Landroid/widget/Button; = null

.field private static final mSentBubbleIds:[I

.field protected static final originalTarget:Ljava/lang/String; = "/data/data/com.android.mms/message_background_image_original.jpg"

.field protected static final originalTargetFileName:Ljava/lang/String; = "message_background_image_original.jpg"

.field protected static sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable; = null

.field protected static sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable; = null

.field protected static final source:Ljava/lang/String; = "/mnt/sdcard/message_background_image.jpg"

.field protected static source_origin:Ljava/lang/String; = null

.field protected static final target:Ljava/lang/String; = "/data/data/com.android.mms/message_background_image.jpg"

.field protected static final targetDirPath:Ljava/lang/String; = "/data/data/com.android.mms/"

.field protected static final targetFileName:Ljava/lang/String; = "message_background_image.jpg"

.field protected static targetOriginFileName:Ljava/lang/String;


# instance fields
.field protected BUBBLE_GRID_HEIGHT:I

.field protected BUBBLE_GRID_WIDTH:I

.field protected mBackGroundItemGridView:Landroid/widget/GridView;

.field protected mBackGroundItemGridViewLand:Landroid/widget/GridView;

.field protected mBackGroundItemScrollView:Landroid/widget/HorizontalScrollView;

.field protected mBackGroundItemScrollViewLand:Landroid/widget/ScrollView;

.field protected mBackGroundItemWrapper:Landroid/widget/LinearLayout;

.field protected mBackGroundItemWrapperLand:Landroid/widget/LinearLayout;

.field protected mBubbleItemGridView:Landroid/widget/GridView;

.field protected mBubbleItemGridViewLand:Landroid/widget/GridView;

.field protected mBubbleItemScrollView:Landroid/widget/HorizontalScrollView;

.field protected mBubbleItemScrollViewLand:Landroid/widget/ScrollView;

.field protected mBubbleItemWrapper:Landroid/widget/LinearLayout;

.field protected mBubbleItemWrapperLand:Landroid/widget/LinearLayout;

.field protected mCurrentScrollPosition:I

.field protected mDisplayPreviewLayout:Landroid/widget/LinearLayout;

.field public mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mIsLandscape:Z

.field public mPrevSelectedBGIndex:I

.field private mReceivedContactInner:Landroid/widget/ImageView;

.field private mReceivedContactOutter:Landroid/widget/ImageView;

.field private mReceivedDate:Landroid/widget/TextView;

.field private mReceivedLayout:Landroid/widget/LinearLayout;

.field public mSelectedBGIndex:I

.field public mSelectedBubbleReceiveIndex:I

.field public mSelectedBubbleSentIndex:I

.field private mSentContactInner:Landroid/widget/ImageView;

.field private mSentContactOutter:Landroid/widget/ImageView;

.field private mSentDate:Landroid/widget/TextView;

.field private mSentLayout:Landroid/widget/LinearLayout;

.field protected mSmoothHoriScroll:Landroid/view/animation/Animation;

.field protected mSmoothVerticalScroll:Landroid/view/animation/Animation;

.field protected mVto:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/16 v0, 0x320

    sput v0, Lcom/android/mms/settings/DisplayStyleActivity;->mGridHeightLand:I

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_BG_ID:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->BG_STYLE_ID:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->CUSTOM_BUBBLE_BG_ID:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->CUSTOM_BG_STYLE_ID:[I

    new-array v0, v7, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->CUSTOM2_BUBBLE_BG_ID:[I

    new-array v0, v7, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->CUSTOM2_BG_STYLE_ID:[I

    const/16 v0, 0x12

    new-array v0, v0, [I

    const v3, 0x7f0201bd

    aput v3, v0, v2

    const v3, 0x7f0201be

    aput v3, v0, v1

    const/4 v3, 0x2

    const v4, 0x7f0201bf

    aput v4, v0, v3

    const/4 v3, 0x3

    const v4, 0x7f0201c0

    aput v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f0201c1

    aput v4, v0, v3

    const v3, 0x7f0201c2

    aput v3, v0, v5

    const v3, 0x7f0b0017

    invoke-static {v3}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v3

    aput v3, v0, v6

    const v3, 0x7f0b0018

    invoke-static {v3}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v3

    aput v3, v0, v7

    const/16 v3, 0x8

    const v4, 0x7f0b0019

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x9

    const v4, 0x7f0b001a

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xa

    const v4, 0x7f0b001b

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xb

    const v4, 0x7f0b001c

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xc

    const v4, 0x7f0b001d

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xd

    const v4, 0x7f0b001e

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xe

    const v4, 0x7f0b001f

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xf

    const v4, 0x7f0b0020

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x10

    const v4, 0x7f0b0021

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x11

    const v4, 0x7f0b0022

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_JPN_CUSTOM_BUBBLE_BG_ID:[I

    const/16 v0, 0x12

    new-array v0, v0, [I

    const v3, 0x7f02027b

    aput v3, v0, v2

    const v3, 0x7f020276

    aput v3, v0, v1

    const/4 v3, 0x2

    const v4, 0x7f020277

    aput v4, v0, v3

    const/4 v3, 0x3

    const v4, 0x7f020278

    aput v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f020279

    aput v4, v0, v3

    const v3, 0x7f02027a

    aput v3, v0, v5

    const v3, 0x7f0b0017

    invoke-static {v3}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v3

    aput v3, v0, v6

    const v3, 0x7f0b0018

    invoke-static {v3}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v3

    aput v3, v0, v7

    const/16 v3, 0x8

    const v4, 0x7f0b0019

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x9

    const v4, 0x7f0b001a

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xa

    const v4, 0x7f0b001b

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xb

    const v4, 0x7f0b001c

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xc

    const v4, 0x7f0b001d

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xd

    const v4, 0x7f0b001e

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xe

    const v4, 0x7f0b001f

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xf

    const v4, 0x7f0b0020

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x10

    const v4, 0x7f0b0021

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x11

    const v4, 0x7f0b0022

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_JPN_CUSTOM_BG_STYLE_ID:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    const v3, 0x7f0201bd

    aput v3, v0, v2

    const v3, 0x7f0201bd

    aput v3, v0, v1

    const/4 v3, 0x2

    const v4, 0x7f0201be

    aput v4, v0, v3

    const/4 v3, 0x3

    const v4, 0x7f0201bf

    aput v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f0201c0

    aput v4, v0, v3

    const v3, 0x7f0201c1

    aput v3, v0, v5

    const v3, 0x7f0201c2

    aput v3, v0, v6

    const v3, 0x7f0b0017

    invoke-static {v3}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v3

    aput v3, v0, v7

    const/16 v3, 0x8

    const v4, 0x7f0b0018

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x9

    const v4, 0x7f0b0019

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xa

    const v4, 0x7f0b001a

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xb

    const v4, 0x7f0b001b

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xc

    const v4, 0x7f0b001c

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xd

    const v4, 0x7f0b001d

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xe

    const v4, 0x7f0b001e

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xf

    const v4, 0x7f0b001f

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x10

    const v4, 0x7f0b0020

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x11

    const v4, 0x7f0b0021

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x12

    const v4, 0x7f0b0022

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_JPN_CUSTOM2_BUBBLE_BG_ID:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    const v3, 0x7f02027b

    aput v3, v0, v2

    const v3, 0x7f02027b

    aput v3, v0, v1

    const/4 v3, 0x2

    const v4, 0x7f020276

    aput v4, v0, v3

    const/4 v3, 0x3

    const v4, 0x7f020277

    aput v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f020278

    aput v4, v0, v3

    const v3, 0x7f020279

    aput v3, v0, v5

    const v3, 0x7f02027a

    aput v3, v0, v6

    const v3, 0x7f0b0017

    invoke-static {v3}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v3

    aput v3, v0, v7

    const/16 v3, 0x8

    const v4, 0x7f0b0018

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x9

    const v4, 0x7f0b0019

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xa

    const v4, 0x7f0b001a

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xb

    const v4, 0x7f0b001b

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xc

    const v4, 0x7f0b001c

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xd

    const v4, 0x7f0b001d

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xe

    const v4, 0x7f0b001e

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xf

    const v4, 0x7f0b001f

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x10

    const v4, 0x7f0b0020

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x11

    const v4, 0x7f0b0021

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x12

    const v4, 0x7f0b0022

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_JPN_CUSTOM2_BG_STYLE_ID:[I

    const/16 v0, 0x12

    new-array v0, v0, [I

    const v3, 0x7f0201bd

    aput v3, v0, v2

    const v3, 0x7f0201be

    aput v3, v0, v1

    const/4 v3, 0x2

    const v4, 0x7f0201bf

    aput v4, v0, v3

    const/4 v3, 0x3

    const v4, 0x7f0201c0

    aput v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f0201c1

    aput v4, v0, v3

    const v3, 0x7f0201c2

    aput v3, v0, v5

    const v3, 0x7f0b0023

    invoke-static {v3}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v3

    aput v3, v0, v6

    const v3, 0x7f0b0024

    invoke-static {v3}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v3

    aput v3, v0, v7

    const/16 v3, 0x8

    const v4, 0x7f0b0025

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x9

    const v4, 0x7f0b0026

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xa

    const v4, 0x7f0b0027

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xb

    const v4, 0x7f0b0028

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xc

    const v4, 0x7f0b0029

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xd

    const v4, 0x7f0b002a

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xe

    const v4, 0x7f0b002b

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xf

    const v4, 0x7f0b002c

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x10

    const v4, 0x7f0b002d

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x11

    const v4, 0x7f0b002e

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_JPN_PREVIEW_BG_ID:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    const v3, 0x7f0201bd

    aput v3, v0, v2

    const v3, 0x7f0201bd

    aput v3, v0, v1

    const/4 v3, 0x2

    const v4, 0x7f0201be

    aput v4, v0, v3

    const/4 v3, 0x3

    const v4, 0x7f0201bf

    aput v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f0201c0

    aput v4, v0, v3

    const v3, 0x7f0201c1

    aput v3, v0, v5

    const v3, 0x7f0201c2

    aput v3, v0, v6

    const v3, 0x7f0b0023

    invoke-static {v3}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v3

    aput v3, v0, v7

    const/16 v3, 0x8

    const v4, 0x7f0b0024

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x9

    const v4, 0x7f0b0025

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xa

    const v4, 0x7f0b0026

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xb

    const v4, 0x7f0b0027

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xc

    const v4, 0x7f0b0028

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xd

    const v4, 0x7f0b0029

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xe

    const v4, 0x7f0b002a

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0xf

    const v4, 0x7f0b002b

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x10

    const v4, 0x7f0b002c

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x11

    const v4, 0x7f0b002d

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    const/16 v3, 0x12

    const v4, 0x7f0b002e

    invoke-static {v4}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v4

    aput v4, v0, v3

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_JPN_PREVIEW2_BG_ID:[I

    new-array v0, v7, [I

    const v3, 0x7f0201bd

    aput v3, v0, v2

    const v3, 0x7f0b0016

    invoke-static {v3}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v3

    aput v3, v0, v1

    const/4 v3, 0x2

    const v4, 0x7f0201be

    aput v4, v0, v3

    const/4 v3, 0x3

    const v4, 0x7f0201bf

    aput v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f0201c0

    aput v4, v0, v3

    const v3, 0x7f0201c1

    aput v3, v0, v5

    const v3, 0x7f0201c2

    aput v3, v0, v6

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_CUSTOM_BUBBLE_BG_ID:[I

    new-array v0, v7, [I

    const v3, 0x7f02027b

    aput v3, v0, v2

    const v3, 0x7f0b0015

    invoke-static {v3}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v3

    aput v3, v0, v1

    const/4 v3, 0x2

    const v4, 0x7f020276

    aput v4, v0, v3

    const/4 v3, 0x3

    const v4, 0x7f020277

    aput v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f020278

    aput v4, v0, v3

    const v3, 0x7f020279

    aput v3, v0, v5

    const v3, 0x7f02027a

    aput v3, v0, v6

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_CUSTOM_BG_STYLE_ID:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    const v3, 0x7f0201bd

    aput v3, v0, v2

    const v3, 0x7f0b0016

    invoke-static {v3}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v3

    aput v3, v0, v1

    const/4 v3, 0x2

    const v4, 0x7f0201bd

    aput v4, v0, v3

    const/4 v3, 0x3

    const v4, 0x7f0201be

    aput v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f0201bf

    aput v4, v0, v3

    const v3, 0x7f0201c0

    aput v3, v0, v5

    const v3, 0x7f0201c1

    aput v3, v0, v6

    const v3, 0x7f0201c2

    aput v3, v0, v7

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_CUSTOM2_BUBBLE_BG_ID:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    const v3, 0x7f02027b

    aput v3, v0, v2

    const v3, 0x7f0b0015

    invoke-static {v3}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v3

    aput v3, v0, v1

    const/4 v3, 0x2

    const v4, 0x7f02027b

    aput v4, v0, v3

    const/4 v3, 0x3

    const v4, 0x7f020276

    aput v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f020277

    aput v4, v0, v3

    const v3, 0x7f020278

    aput v3, v0, v5

    const v3, 0x7f020279

    aput v3, v0, v6

    const v3, 0x7f02027a

    aput v3, v0, v7

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_CUSTOM2_BG_STYLE_ID:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_SEND_STYLE_ID:[I

    const-string v0, "/mnt/sdcard/message_background_image_origin.jpg"

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->source_origin:Ljava/lang/String;

    const-string v0, "message_background_image_origin.jpg"

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->targetOriginFileName:Ljava/lang/String;

    const/16 v0, 0x38c

    sput v0, Lcom/android/mms/settings/DisplayStyleActivity;->mGridWidth:I

    sput v7, Lcom/android/mms/settings/DisplayStyleActivity;->mMaxItemCount:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/settings/DisplayStyleActivity;->CUSTOM_ITEM_INDEX:I

    sput v1, Lcom/android/mms/settings/DisplayStyleActivity;->mNewFestivalItemIdx:I

    const-string v0, "festival_effect_enabled"

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->KEY_FESTIVAL_EFFECT_ENABLED:Ljava/lang/String;

    const-string v0, "festival_effect_messages_background"

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->KEY_FESTIVAL_EFFECT_MESSAGES_BACKGROUND_ENABLED:Ljava/lang/String;

    const-string v0, "content://com.sec.android.jpnanniversaryprovider/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->JAPAN_HOLIDAY_URI:Landroid/net/Uri;

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "festival_effect_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->JAPAN_HOLIDAY_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mFestivalBGImageArray:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGImageArray:[I

    sput-boolean v2, Lcom/android/mms/settings/DisplayStyleActivity;->mIsCustomItemExist:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    new-array v0, v6, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mReceivedBubbleIds:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mSentBubbleIds:[I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x7f0201b8
        0x7f0201b9
        0x7f0201ba
        0x7f0201bb
        0x7f0201bc
    .end array-data

    :array_1
    .array-data 4
        0x7f020276
        0x7f020277
        0x7f020278
        0x7f020279
        0x7f02027a
    .end array-data

    :array_2
    .array-data 4
        0x7f0201bd
        0x7f0201be
        0x7f0201bf
        0x7f0201c0
        0x7f0201c1
        0x7f0201c2
    .end array-data

    :array_3
    .array-data 4
        0x7f02027b
        0x7f020276
        0x7f020277
        0x7f020278
        0x7f020279
        0x7f02027a
    .end array-data

    :array_4
    .array-data 4
        0x7f0201bd
        0x7f0201bd
        0x7f0201be
        0x7f0201bf
        0x7f0201c0
        0x7f0201c1
        0x7f0201c2
    .end array-data

    :array_5
    .array-data 4
        0x7f02027b
        0x7f02027b
        0x7f020276
        0x7f020277
        0x7f020278
        0x7f020279
        0x7f02027a
    .end array-data

    :array_6
    .array-data 4
        0x7f0201f3
        0x7f0201f4
        0x7f0201f5
        0x7f0201f6
        0x7f0201f7
    .end array-data

    :array_7
    .array-data 4
        0x7f0201f3
        0x7f0201f4
        0x7f0201f5
        0x7f0201f6
        0x7f0201f7
    .end array-data

    :array_8
    .array-data 4
        0x7f0201d4
        0x7f0201d7
        0x7f0201da
        0x7f0201dd
        0x7f0201e0
        0x7f0201d4
    .end array-data

    :array_9
    .array-data 4
        0x7f0201e3
        0x7f0201e6
        0x7f0201e9
        0x7f0201ec
        0x7f0201ef
        0x7f0201e3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static checkTodayIsFestivalJpn(Landroid/content/Context;Landroid/content/ContentResolver;)I
    .locals 13
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/content/ContentResolver;

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    invoke-virtual {v6, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    const/4 v10, -0x1

    const/4 v9, -0x1

    const-string v3, "dtstart <= ? and dtend >= ?"

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object v7, v4, v1

    aput-object v7, v4, v2

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->JAPAN_HOLIDAY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/settings/DisplayStyleActivity;->JAPAN_HOLIDAY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v0, -0x1

    if-le v10, v0, :cond_0

    move v9, v10

    const-string v0, "Mms/DisplayStyleActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FestivalEvent  eventIndex:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return v9

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;
    .locals 24
    .param p0    # Landroid/app/Activity;
    .param p1    # Z
    .param p2    # Z

    const-string v19, "Mms/DisplayStyleActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createBackgroundBitmapDrawable isLandscape="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " isDownSizing="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v19, Ljava/io/File;

    const-string v20, "/data/data/com.android.mms/"

    const-string v21, "message_background_image.jpg"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getHeight()I

    move-result v14

    invoke-static/range {p0 .. p0}, Lcom/android/mms/settings/DisplayStyleActivity;->getTopLayoutSizeWithStatusBar(Landroid/app/Activity;)I

    move-result v9

    move v12, v14

    move v13, v15

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v17

    :goto_0
    if-nez v17, :cond_1

    const-string v19, "Mms/DisplayStyleActivity"

    const-string v20, "photo is null. return null"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    :goto_1
    return-object v19

    :cond_0
    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v10, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v17

    goto :goto_0

    :cond_1
    sub-int v12, v14, v9

    invoke-static {}, Lcom/android/mms/MmsConfig;->isLandscapeBaseModel()Z

    move-result v19

    if-nez v19, :cond_5

    if-eqz p1, :cond_2

    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v8, v19, v20

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    mul-int/lit8 v22, v22, 0x2

    div-int/lit8 v22, v22, 0x3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Lcom/android/mms/settings/DisplayStyleActivity;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/16 v17, 0x0

    move-object/from16 v17, v18

    :cond_2
    :goto_2
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    if-lt v0, v12, :cond_3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    if-ge v0, v13, :cond_4

    :cond_3
    const-string v19, "Mms/DisplayStyleActivity"

    const-string v20, "setBackground photo.getHeight() < mNewScreenHeight || photo.getWidth() < mNewScreenWidth"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v15, v14, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Lcom/android/mms/settings/DisplayStyleActivity;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/16 v17, 0x0

    move-object/from16 v17, v18

    :cond_4
    new-instance v6, Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Lcom/android/mms/ui/FixedSizeBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v19, "Mms/DisplayStyleActivity"

    const-string v20, "createBackgroundBitmapDrawable success"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    move-object v5, v6

    :goto_3
    move-object/from16 v19, v5

    goto/16 :goto_1

    :cond_5
    if-nez p1, :cond_2

    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v14

    move/from16 v20, v0

    div-float v8, v19, v20

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x3

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    div-int/lit8 v21, v21, 0x3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v8

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Lcom/android/mms/settings/DisplayStyleActivity;->recycleBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v17, 0x0

    move-object/from16 v17, v18

    goto/16 :goto_2

    :catch_0
    move-exception v7

    :goto_4
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v7

    :goto_5
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v7

    :goto_6
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v19, 0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    const-string v19, "Mms/DisplayStyleActivity"

    const-string v20, "OutOfMemoryError caught @ getCropedBackground() and throw"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_6
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/settings/DisplayStyleActivity;->createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v5

    goto :goto_3

    :catch_3
    move-exception v7

    move-object v5, v6

    goto :goto_6

    :catch_4
    move-exception v7

    move-object v5, v6

    goto :goto_5

    :catch_5
    move-exception v7

    move-object v5, v6

    goto :goto_4
.end method

.method private static createFestivalBackgroundBitmapDrawableJpn(Landroid/app/Activity;Landroid/graphics/Bitmap;)Lcom/android/mms/ui/FixedSizeBitmapDrawable;
    .locals 11
    .param p0    # Landroid/app/Activity;
    .param p1    # Landroid/graphics/Bitmap;

    const-string v9, "Mms/DisplayStyleActivity"

    const-string v10, "createFestivalBackgroundBitmapDrawableJpn()"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-static {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->getTopLayoutSizeWithStatusBar(Landroid/app/Activity;)I

    move-result v2

    move v3, v5

    move v4, v6

    move-object v7, p1

    if-nez v7, :cond_0

    :try_start_0
    const-string v9, "Mms/DisplayStyleActivity"

    const-string v10, "photo is null. return null"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_0
    sub-int v3, v5, v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-lt v9, v3, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ge v9, v4, :cond_2

    :cond_1
    const-string v9, "Mms/DisplayStyleActivity"

    const-string v10, "setBackground photo.getHeight() < mNewScreenHeight || photo.getWidth() < mNewScreenWidth"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-static {v7, v6, v5, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v7, 0x0

    move-object v7, v8

    :cond_2
    new-instance v0, Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v0, v9, v7}, Lcom/android/mms/ui/FixedSizeBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v9, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0, p1}, Lcom/android/mms/settings/DisplayStyleActivity;->createFestivalBackgroundBitmapDrawableJpn(Landroid/app/Activity;Landroid/graphics/Bitmap;)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v0

    goto :goto_1
.end method

.method public static getBGStyleArray(Z)[I
    .locals 1
    .param p0    # Z

    invoke-static {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->updateBGStyleArray(Z)V

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    return-object v0
.end method

.method public static getCropedBackground(Landroid/app/Activity;Z)Lcom/android/mms/ui/FixedSizeBitmapDrawable;
    .locals 6
    .param p0    # Landroid/app/Activity;
    .param p1    # Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v1, v2

    :goto_0
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    sget-object v4, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    if-nez v4, :cond_0

    invoke-static {p0, v2, v3}, Lcom/android/mms/settings/DisplayStyleActivity;->createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v2

    sput-object v2, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    :cond_0
    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    :goto_1
    return-object v0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    if-nez v2, :cond_3

    invoke-static {p0, v3, v3}, Lcom/android/mms/settings/DisplayStyleActivity;->createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v2

    sput-object v2, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    :cond_3
    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/mms/settings/DisplayStyleActivity;->releaseBackgroundBitmapDrawable()V

    if-eqz v1, :cond_5

    invoke-static {p0, v2, v3}, Lcom/android/mms/settings/DisplayStyleActivity;->createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v2

    sput-object v2, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    goto :goto_1

    :cond_5
    invoke-static {p0, v3, v3}, Lcom/android/mms/settings/DisplayStyleActivity;->createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v2

    sput-object v2, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    goto :goto_1
.end method

.method public static getCropedFestivalBackgroundJpn(Landroid/app/Activity;Landroid/graphics/Bitmap;)Lcom/android/mms/ui/FixedSizeBitmapDrawable;
    .locals 1
    .param p0    # Landroid/app/Activity;
    .param p1    # Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/android/mms/settings/DisplayStyleActivity;->createFestivalBackgroundBitmapDrawableJpn(Landroid/app/Activity;Landroid/graphics/Bitmap;)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFestivalBackgroundJpn(Landroid/app/Activity;Landroid/content/ContentResolver;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0    # Landroid/app/Activity;
    .param p1    # Landroid/content/ContentResolver;

    const/4 v11, 0x0

    const-string v7, "Mms/DisplayStyleActivity"

    const-string v8, "getFestivalBackgroundJpn"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/android/mms/settings/DisplayStyleActivity;->checkTodayIsFestivalJpn(Landroid/content/Context;Landroid/content/ContentResolver;)I

    move-result v5

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p1, v5}, Lcom/android/mms/settings/DisplayStyleActivity;->isEnableFestivalEffectJpn(Landroid/content/Context;Landroid/content/ContentResolver;I)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v7, "Mms/DisplayStyleActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFestivalBackgroundJpn(), festivalSort is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v5}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/mms/settings/DisplayStyleActivity;->getCropedFestivalBackgroundJpn(Landroid/app/Activity;Landroid/graphics/Bitmap;)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v7, Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v8

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v9

    invoke-static {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->getTopLayoutSizeWithStatusBar(Landroid/app/Activity;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-direct {v7, v11, v11, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v7}, Lcom/android/mms/ui/FixedSizeBitmapDrawable;->setFixedBounds(Landroid/graphics/Rect;)V

    move-object v0, v3

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static getTopLayoutSizeWithStatusBar(Landroid/app/Activity;)I
    .locals 9
    .param p0    # Landroid/app/Activity;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x0

    const v6, 0x1020002

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_0
    sub-int v3, v0, v2

    const-string v6, "StatusBarTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StatusBar Height= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " TitleBar Height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private initPrevItemResources()V
    .locals 1

    const v0, 0x7f0b01db

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSentLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b01dd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSentDate:Landroid/widget/TextView;

    const v0, 0x7f0b01de

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSentContactInner:Landroid/widget/ImageView;

    const v0, 0x7f0b01df

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSentContactOutter:Landroid/widget/ImageView;

    const v0, 0x7f0b01e2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mReceivedLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b01e5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mReceivedDate:Landroid/widget/TextView;

    const v0, 0x7f0b01e3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mReceivedContactInner:Landroid/widget/ImageView;

    const v0, 0x7f0b01e1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mReceivedContactOutter:Landroid/widget/ImageView;

    return-void
.end method

.method public static isCustomItemExist()Z
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/settings/DisplayStyleActivity;->mIsCustomItemExist:Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/settings/DisplayStyleActivity;->mIsCustomItemExist:Z

    :cond_0
    sget-boolean v1, Lcom/android/mms/settings/DisplayStyleActivity;->mIsCustomItemExist:Z

    return v1
.end method

.method public static isEnableFestivalEffectJpn(Landroid/content/Context;Landroid/content/ContentResolver;I)Z
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/content/ContentResolver;
    .param p2    # I

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v4, Lcom/android/mms/settings/DisplayStyleActivity;->KEY_FESTIVAL_EFFECT_ENABLED:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sget-object v4, Lcom/android/mms/settings/DisplayStyleActivity;->KEY_FESTIVAL_EFFECT_MESSAGES_BACKGROUND_ENABLED:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {p2}, Lcom/android/mms/settings/DisplayStyleActivity;->isFestivalDayJpn(I)Z

    move-result v1

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFestivalDayJpn(I)Z
    .locals 2
    .param p0    # I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-le p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    const-string v0, "Mms/DisplayStyleActivity"

    const-string v1, "recycleBitmap Bitmap"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static recycleBitmap(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 3
    .param p0    # Landroid/graphics/drawable/BitmapDrawable;

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const-string v1, "Mms/DisplayStyleActivity"

    const-string v2, "recycleBitmap BitmapDrawable"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static recycleBitmap(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0    # Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const-string v1, "Mms/DisplayStyleActivity"

    const-string v2, "recycleBitmap Drawable"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method protected static releaseBackgroundBitmapDrawable()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    invoke-static {v0}, Lcom/android/mms/settings/DisplayStyleActivity;->recycleBitmap(Landroid/graphics/drawable/BitmapDrawable;)V

    sput-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    :cond_0
    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    invoke-static {v0}, Lcom/android/mms/settings/DisplayStyleActivity;->recycleBitmap(Landroid/graphics/drawable/BitmapDrawable;)V

    sput-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    :cond_1
    return-void
.end method

.method private setDisableBackgroundStyle()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridViewLand:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollViewLand:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemWrapperLand:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setDisableBubbleStyle()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridViewLand:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollViewLand:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemWrapperLand:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setEnableBackgroundStyle()V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    iget-boolean v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollView:Landroid/widget/HorizontalScrollView;

    iget-boolean v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemWrapper:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridViewLand:Landroid/widget/GridView;

    iget-boolean v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollViewLand:Landroid/widget/ScrollView;

    iget-boolean v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemWrapperLand:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v3, :cond_5

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    move v2, v1

    goto :goto_5
.end method

.method private setEnableBubbleStyle()V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridView:Landroid/widget/GridView;

    iget-boolean v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollView:Landroid/widget/HorizontalScrollView;

    iget-boolean v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemWrapper:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridViewLand:Landroid/widget/GridView;

    iget-boolean v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollViewLand:Landroid/widget/ScrollView;

    iget-boolean v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemWrapperLand:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v3, :cond_5

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    move v2, v1

    goto :goto_5
.end method

.method protected static updateBGStyleArray(Z)V
    .locals 2
    .param p0    # Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableBackgroundStyleWithImage()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGImageArray:[I

    :goto_0
    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    array-length v0, v0

    sput v0, Lcom/android/mms/settings/DisplayStyleActivity;->mMaxItemCount:I

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x64

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x14

    sput v0, Lcom/android/mms/settings/DisplayStyleActivity;->mGridWidth:I

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x64

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x14

    sput v0, Lcom/android/mms/settings/DisplayStyleActivity;->mGridHeightLand:I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/settings/DisplayStyleActivity;->isCustomItemExist()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_CUSTOM2_BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_CUSTOM2_BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGImageArray:[I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_CUSTOM_BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_CUSTOM_BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGImageArray:[I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalEffectJpn()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/mms/settings/DisplayStyleActivity;->isCustomItemExist()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p0, :cond_3

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_JPN_CUSTOM2_BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_JPN_CUSTOM2_BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGImageArray:[I

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_JPN_PREVIEW2_BG_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mFestivalBGImageArray:[I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_JPN_CUSTOM_BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_JPN_CUSTOM_BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGImageArray:[I

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_JPN_PREVIEW_BG_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mFestivalBGImageArray:[I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/settings/DisplayStyleActivity;->isCustomItemExist()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p0, :cond_5

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->CUSTOM2_BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->CUSTOM2_BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGImageArray:[I

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->CUSTOM_BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    sget-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->CUSTOM_BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBGImageArray:[I

    goto/16 :goto_0
.end method


# virtual methods
.method protected calculateScrollPosition(IIII)I
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    div-int v0, p4, p2

    mul-int/2addr v0, p3

    div-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    div-int v1, p4, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public makeView()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v3, "Mms/DisplayStyleActivity"

    const-string v6, "makeView"

    invoke-static {v3, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleBackgroundStyle(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    sget-object v3, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    invoke-static {v0, v3}, Lcom/android/mms/ui/MessageUtils;->isIndexValid(I[I)Z

    move-result v3

    if-nez v3, :cond_0

    sget v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BACKGROUND_STYLE_DEFAULT_VALUE:I

    :cond_0
    sget-object v3, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_SEND_STYLE_ID:[I

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->isIndexValid(I[I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    sget-object v3, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    invoke-static {v1, v3}, Lcom/android/mms/ui/MessageUtils;->isIndexValid(I[I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lcom/android/mms/settings/DisplayStyleActivity;->mNewFestivalItemIdx:I

    if-ne v0, v3, :cond_4

    :cond_3
    sget v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BACKGROUND_STYLE_DEFAULT_VALUE:I

    :cond_4
    iput v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    iput v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mPrevSelectedBGIndex:I

    iput v2, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleSentIndex:I

    iput v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b01d9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mDisplayPreviewLayout:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    iget v6, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {p0, v3, v6}, Lcom/android/mms/settings/DisplayStyleActivity;->updatePreviewItems(II)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    const v3, 0x7f0b01ea

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollView:Landroid/widget/HorizontalScrollView;

    const v3, 0x7f0b01f1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollViewLand:Landroid/widget/ScrollView;

    const v3, 0x7f0b01ee

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollViewLand:Landroid/widget/ScrollView;

    const v3, 0x7f0b01e7

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollViewLand:Landroid/widget/ScrollView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollViewLand:Landroid/widget/ScrollView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    const v3, 0x7f0b01ec

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    const v3, 0x7f0b01e9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_GRID_WIDTH:I

    const v3, 0x7f0b01f3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridViewLand:Landroid/widget/GridView;

    const v3, 0x7f0b01f0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridViewLand:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridViewLand:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_GRID_HEIGHT:I

    const v3, 0x7f0b01eb

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemWrapper:Landroid/widget/LinearLayout;

    const v3, 0x7f0b01f2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemWrapperLand:Landroid/widget/LinearLayout;

    const v3, 0x7f0b01e8

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemWrapper:Landroid/widget/LinearLayout;

    const v3, 0x7f0b01ef

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemWrapperLand:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->updateGridViewLayout()V

    iget v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    sget v5, Lcom/android/mms/settings/DisplayStyleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne v3, v5, :cond_6

    invoke-static {}, Lcom/android/mms/settings/DisplayStyleActivity;->isCustomItemExist()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v4}, Lcom/android/mms/settings/DisplayStyleActivity;->setCustomBackground(Z)V

    :goto_1
    return-void

    :cond_5
    move v3, v5

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->setBackgroundStyle()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    iget v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    sget v2, Lcom/android/mms/settings/DisplayStyleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/android/mms/settings/DisplayStyleActivity;->isCustomItemExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/mms/settings/DisplayStyleActivity;->setCustomBackground(Z)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalEffectJpn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/android/mms/settings/DisplayStyleActivity;->isCustomItemExist()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    invoke-static {}, Lcom/android/mms/settings/DisplayStyleActivity;->isCustomItemExist()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->setBackgroundStyle()V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040065

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->initPrevItemResources()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/settings/DisplayStyleActivity;->updateBGStyleArray(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mVto:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mVto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    iget v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/settings/DisplayStyleActivity;->updatePreviewItems(II)V

    return-void
.end method

.method protected refreshLayout(I)V
    .locals 0
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->setDisableBackgroundStyle()V

    invoke-direct {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->setEnableBubbleStyle()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->setDisableBubbleStyle()V

    invoke-direct {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->setEnableBackgroundStyle()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setActionBar()V
    .locals 4

    const v3, 0x7f040044

    const/16 v2, 0x10

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    sput-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->mActionBar:Landroid/app/ActionBar;

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->mCancelButton:Landroid/widget/Button;

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->mSaveButton:Landroid/widget/Button;

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0c00e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected setBackgroundStyle()V
    .locals 5

    invoke-static {}, Lcom/android/mms/settings/DisplayStyleActivity;->releaseBackgroundBitmapDrawable()V

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mDisplayPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    iget v4, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mDisplayPreviewLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setCustomBackground(Z)V
    .locals 6
    .param p1    # Z

    const/4 v5, 0x0

    const-string v2, "Mms/DisplayStyleActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCustomBackground useCache="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/mms/settings/DisplayStyleActivity;->getCropedBackground(Landroid/app/Activity;Z)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "Mms/DisplayStyleActivity"

    const-string v3, "setCustomBackground can\'t get croped bg"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/high16 v2, 0x33000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    const/high16 v3, 0x42f00000

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/FixedSizeBitmapDrawable;->setFixedBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mDisplayPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setWindowResizingEventHandler()V
    .locals 2

    new-instance v0, Lcom/android/mms/settings/DisplayStyleActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/settings/DisplayStyleActivity$1;-><init>(Lcom/android/mms/settings/DisplayStyleActivity;)V

    iput-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected updateGridViewLayout()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/android/mms/settings/DisplayStyleActivity;->mGridWidth:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    sget v3, Lcom/android/mms/settings/DisplayStyleActivity;->mMaxItemCount:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v2, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridViewLand:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/android/mms/settings/DisplayStyleActivity;->mGridHeightLand:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridViewLand:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updatePreviewItems(II)V
    .locals 11
    .param p1    # I
    .param p2    # I

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mDisplayPreviewLayout:Landroid/widget/LinearLayout;

    if-nez v6, :cond_0

    const v6, 0x7f0b01d9

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mDisplayPreviewLayout:Landroid/widget/LinearLayout;

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v6, Lcom/android/mms/settings/DisplayStyleActivity;->mSentBubbleIds:[I

    aget v2, v6, p1

    sget-object v6, Lcom/android/mms/settings/DisplayStyleActivity;->mReceivedBubbleIds:[I

    aget v1, v6, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v0, 0xb00

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0xb01

    invoke-static {v6, v3, v4, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    if-ne p1, v10, :cond_1

    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSentContactInner:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSentContactOutter:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-ne p2, v10, :cond_2

    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mReceivedContactInner:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mReceivedContactOutter:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mReceivedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSentDate:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mReceivedDate:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSentContactInner:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSentContactOutter:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mReceivedContactInner:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mReceivedContactOutter:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
