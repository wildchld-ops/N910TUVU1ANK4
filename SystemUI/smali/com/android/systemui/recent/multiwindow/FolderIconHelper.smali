.class public Lcom/android/systemui/recent/multiwindow/FolderIconHelper;
.super Ljava/lang/Object;
.source "FolderIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;,
        Lcom/android/systemui/recent/multiwindow/FolderIconHelper$LocFolder;
    }
.end annotation


# static fields
.field private static CENTER_ALIGN_VAL:I

.field private static DEBUG:Z

.field private static final FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

.field private static final FOLDER_ICON_PAINT:Landroid/graphics/Paint;

.field private static RIGHT_ALIGN_VAL:I

.field private static mResources:Landroid/content/res/Resources;

.field private static mTmpCord:[F

.field private static sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

.field private static sDebugColors:[I

.field private static sLandAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

.field private static sPortAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    sput v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->CENTER_ALIGN_VAL:I

    sput v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->RIGHT_ALIGN_VAL:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->mResources:Landroid/content/res/Resources;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->mTmpCord:[F

    sput-boolean v1, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->DEBUG:Z

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sDebugColors:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0xffff01
        -0x10000
        -0xff01
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->CENTER_ALIGN_VAL:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->RIGHT_ALIGN_VAL:I

    return v0
.end method

.method private static createDarkenColorFilter(F)Landroid/graphics/ColorFilter;
    .locals 4

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v2, 0x437f0000

    mul-float/2addr v2, p0

    float-to-int v0, v2

    rsub-int v0, v0, 0xff

    const/16 v2, 0xff

    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    return-object v2
.end method

.method static createFolderIconNoPlate(Landroid/graphics/Bitmap;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static createFolderIconNoPlate(Landroid/graphics/Bitmap;Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    sget-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget-object v3, v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget-object v4, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget-object v4, v4, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move-object v2, p2

    sget-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget-object p2, v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->EMPTY_BITMAP:Landroid/graphics/Bitmap;

    :cond_0
    invoke-static {p1, v1}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->drawIcons(Ljava/util/List;I)V

    if-eqz v2, :cond_1

    move-object p2, v2

    :cond_1
    return-object v0
.end method

.method static createFolderIconWithPlate(Landroid/graphics/Bitmap;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget-object v3, v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget-object v4, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget-object v4, v4, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {p0, p1}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v4, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private static drawIcons(Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v10, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    add-int/lit8 v6, p1, -0x1

    sget-boolean v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    const v2, 0x4400ff00

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v2, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    # getter for: Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->access$000(Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;)Landroid/graphics/Rect;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v8, p1, -0x1

    :goto_0
    if-ltz v8, :cond_0

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->mIconPositions:[[[F

    aget-object v0, v0, v6

    aget-object v7, v0, v8

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    aget v2, v7, v2

    aget v3, v7, v10

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v2, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget v2, v2, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    sget-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget v3, v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    sget-boolean v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sDebugColors:[I

    aget v2, v2, v8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v2, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget v2, v2, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_WIDTH:I

    int-to-float v3, v2

    sget-object v2, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget v2, v2, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_HEIGHT:I

    int-to-float v4, v2

    sget-object v5, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d0112

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sget-object v2, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget v3, v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_WIDTH:I

    sget-object v4, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget v4, v4, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_HEIGHT:I

    invoke-static {v0, v3, v4, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v8, v8, -0x1

    goto :goto_0
.end method

.method public static getAppIconScaleFactor()F
    .locals 1

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget v0, v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    return v0
.end method

.method public static getAppIconXYCord(IIZ)[F
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const/4 v5, 0x7

    if-le p1, v5, :cond_3

    move v1, v3

    :goto_0
    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_7

    if-le p0, v3, :cond_6

    move v2, v3

    :goto_1
    if-gez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    sget-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget-object v3, v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->mIconPositions:[[[F

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2
    :try_start_0
    sget-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget-object v3, v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->mIconPositions:[[[F

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    sput-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->mTmpCord:[F
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->mTmpCord:[F

    return-object v3

    :cond_3
    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x4

    if-le p1, v5, :cond_5

    move v1, v4

    :goto_3
    goto :goto_0

    :cond_5
    add-int/lit8 v1, p1, -0x1

    goto :goto_3

    :cond_6
    move v2, p0

    goto :goto_1

    :cond_7
    if-le p0, v4, :cond_8

    move v2, v4

    :goto_4
    goto :goto_1

    :cond_8
    move v2, p0

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget-object v3, v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->mIconPositions:[[[F

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    sput-object v3, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->mTmpCord:[F

    goto :goto_2
.end method

.method public static getNormalFolderBitmap()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getOpenFolderBitmap()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getOpenFolderHighlightBitmap()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_HIGHLIGHT:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static initFolderResources(Landroid/content/res/Resources;)V
    .locals 2

    sput-object p0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->CENTER_ALIGN_VAL:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const v0, 0x7f0d010e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->CENTER_ALIGN_VAL:I

    const v0, 0x7f0d010f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->RIGHT_ALIGN_VAL:I

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sPortAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sPortAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    :cond_1
    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sPortAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    sput-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sLandAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sLandAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    :cond_3
    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sLandAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    sput-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->sCurrentAppIconData:Lcom/android/systemui/recent/multiwindow/FolderIconHelper$AppIconData;

    goto :goto_0
.end method

.method private static setDarkenPaintMultiplier(F)V
    .locals 1

    sget-object v0, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-static {p0, v0}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    return-void
.end method

.method private static setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
