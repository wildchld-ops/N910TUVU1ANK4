.class public Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLHelpItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field private static final BOTTOM_PADDING:I

.field private static final DESCRIPTION_COLOR:I

.field private static final DESCRIPTION_ICON_RIGHT_PADDING:I

.field private static final DESCRIPTION_ICON_WIDTH:I

.field private static final DESCRIPTION_TEXT_STROKE_COLOR:I

.field private static final FONT_SIZE:F

.field public static final ITEM_BOTTOM_PADDING:I = 0x2

.field public static final ITEM_NO_PADDING:I = 0x0

.field public static final ITEM_TOP_AND_BOTTOM_PADDING:I = 0x3

.field private static final ITEM_TOP_BOTTOM_PADDING:I

.field public static final ITEM_TOP_PADDING:I = 0x1

.field private static final LEFT_PADDING:I

.field public static final ONLY_DESCRIPTION_TYPE:I = 0x0

.field private static final RIGHT_PADDING:I

.field private static final SUBTITLE_TEXT_STROKE_COLOR:I

.field private static final TEXT_HEIGHT:I

.field private static final TEXT_STROKE_WIDTH:I

.field private static final TITLE_COLOR:I

.field private static final TOP_PADDING:I

.field public static final WITH_SUB_TITLE_AND_DESCRIPTION_ICON_TYPE:I = 0x2

.field public static final WITH_SUB_TITLE_TYPE:I = 0x1


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mDescription:Lcom/sec/android/glview/TwGLText;

.field private mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

.field private mDescriptionString:Ljava/lang/String;

.field private mDescriptionType:I

.field private mItemPaddingPosition:I

.field private mItemSubTitle:Lcom/sec/android/glview/TwGLText;

.field private mResId:I

.field private mSubTitleRowsRequired:I

.field private mSubTitleString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a02a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    const v0, 0x7f0a02a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->RIGHT_PADDING:I

    const v0, 0x7f0a02a4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TOP_PADDING:I

    const v0, 0x7f0a02a5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    const v0, 0x7f0a02a6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    const v0, 0x7f0a02a7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_WIDTH:I

    const v0, 0x7f0a02a8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_RIGHT_PADDING:I

    const v0, 0x7f0a02a9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    const v0, 0x7f0b0027

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_STROKE_WIDTH:I

    const v0, 0x7f090004

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->SUBTITLE_TEXT_STROKE_COLOR:I

    const/high16 v0, 0x7f090000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_TEXT_STROKE_COLOR:I

    const v0, 0x7f0b0058

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    const v0, 0x7f090014

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TITLE_COLOR:I

    const v0, 0x7f09000c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFILjava/lang/String;I)V
    .locals 7
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # I
    .param p7    # Ljava/lang/String;
    .param p8    # I

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    iput p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    invoke-direct {p0, p8, p6}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFILjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # I
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p9    # I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    iput p9, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    invoke-direct {p0, p9, p6}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFILjava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # I
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p9    # I
    .param p10    # I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    move/from16 v0, p10

    invoke-direct {p0, v0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    return-void
.end method

.method private initContent(II)V
    .locals 13
    .param p1    # I
    .param p2    # I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TOP_PADDING:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->RIGHT_PADDING:I

    int-to-float v1, v1

    sub-float v4, v0, v1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    :cond_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v12

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    mul-int v11, v0, v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_5

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v11

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    const-string v0, "he"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "iw"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    :goto_2
    int-to-float v0, v11

    add-float/2addr v3, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    :cond_3
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v11

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_2

    :pswitch_1
    if-eqz p2, :cond_7

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    mul-int v11, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_a

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v11

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TITLE_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->SUBTITLE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    int-to-float v0, v11

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v12

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    mul-int v11, v0, v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_b

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v11

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    int-to-float v0, v11

    add-float/2addr v3, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_8

    const/4 v0, 0x3

    if-ne p2, v0, :cond_9

    :cond_8
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v11

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v11

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_4

    :pswitch_2
    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const/4 v0, 0x3

    if-ne p2, v0, :cond_d

    :cond_c
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    mul-int v11, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_11

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v11

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TITLE_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->SUBTITLE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    int-to-float v0, v11

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    if-nez v0, :cond_e

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_e
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_WIDTH:I

    int-to-float v0, v0

    sub-float/2addr v4, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v12

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    mul-int v11, v0, v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_12

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_RIGHT_PADDING:I

    add-int/2addr v2, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    int-to-float v5, v11

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    int-to-float v0, v11

    add-float/2addr v3, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_f

    const/4 v0, 0x3

    if-ne p2, v0, :cond_10

    :cond_f
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v11

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto/16 :goto_5

    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v11

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2
    .param p1    # Lcom/sec/android/glview/TwGLView$OnTouchListener;

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method

.method public declared-synchronized setWidth(F)V
    .locals 5
    .param p1    # F

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    sub-int/2addr v4, v0

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    sub-int/2addr v4, v0

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
