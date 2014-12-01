.class public final Lcom/android/launcher2/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final DEBUG_VIEWS_AND_SIZES:Z = false

.field private static final PACKAGE_CONTEXT_FLAGS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Launcher.Utilities"

.field private static final WIDGET_PREVIEW_ICON_PADDING_PERCENTAGE:F = 0.25f

.field private static final XXXHDPI_ICON_REAL_SIZE:I = 0xc0

.field private static final XXXHDPI_ICON_SIZE:I = 0xd4

.field private static mBgPaint:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private static mToast:Landroid/widget/Toast;

.field private static sBlackPaint:Landroid/graphics/Paint;

.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconNormalHeight:I

.field private static sIconNormalWidth:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sput v0, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sput v0, Lcom/android/launcher2/Utilities;->sIconNormalWidth:I

    sput v0, Lcom/android/launcher2/Utilities;->sIconNormalHeight:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->mBgPaint:Ljava/util/HashMap;

    sput-object v4, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/Utilities;->sColors:[I

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/Utilities;->sColorIndex:I

    sput-object v4, Lcom/android/launcher2/Utilities;->mToast:Landroid/widget/Toast;

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static CreateScaledBitmapWithNormalSize(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    sget v1, Lcom/android/launcher2/Utilities;->sIconNormalWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    :cond_0
    sget v1, Lcom/android/launcher2/Utilities;->sIconNormalWidth:I

    sget v2, Lcom/android/launcher2/Utilities;->sIconNormalHeight:I

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final DEBUGGABLE()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static broadcastStkIntent(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_RIL_DATAONLY_DSDS_ONECHIP"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_RIL_DATAONLY_DSDS_ONECHIP"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_RIL_MULTISIM_DUOS_GSMGSM"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const-string v2, "gsm.sim.screenEvent"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "gsm.sim.screenEvent2"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.event"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/launcher2/CatEventDownload;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lcom/android/launcher2/CatEventDownload;-><init>(I)V

    const-string v2, "STK EVENT"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CatEventDownload;->putExtra(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "Launcher.Utilities"

    const-string v3, "broadcastStkIntent sent"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_USE_MULTISIM"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "gsm.sim.screenEvent"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.event"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_5
    const-string v2, "gsm.sim.screenEvent2"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk2.event"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v2, "gsm.sim.screenEvent"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.event"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    const/high16 v2, 0x40000000

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 4

    const/high16 v3, 0x40000000

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 12

    const/high16 v11, 0x3f000000

    const/4 v10, 0x0

    const/4 v9, 0x0

    sget-object v7, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v7

    :try_start_0
    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 v3, 0x3f800000

    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    if-gt v5, v6, :cond_1

    sget v6, Lcom/android/launcher2/Utilities;->sIconHeight:I

    if-le v4, v6, :cond_2

    :cond_1
    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    sget v7, Lcom/android/launcher2/Utilities;->sIconHeight:I

    int-to-float v7, v7

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v6, v5

    mul-float/2addr v6, v3

    float-to-int v5, v6

    int-to-float v6, v4

    mul-float/2addr v6, v3

    float-to-int v4, v6

    :cond_2
    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sub-int v0, v6, v5

    sget v6, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sub-int v1, v6, v4

    const/high16 v6, 0x3f800000

    cmpg-float v6, v3, v6

    if-ltz v6, :cond_3

    if-gtz v0, :cond_3

    if-lez v1, :cond_4

    :cond_3
    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sget v7, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v9}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    int-to-float v7, v0

    mul-float/2addr v7, v11

    int-to-float v8, v1

    mul-float/2addr v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, p0, v10, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p0, v2

    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    return-object p0

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v13, 0x0

    const/high16 v12, 0x3f000000

    const/4 v11, 0x0

    sget-object v9, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v9

    :try_start_0
    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_0

    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v8, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v8, :cond_4

    move-object v4, p0

    check-cast v4, Landroid/graphics/drawable/PaintDrawable;

    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    sget v8, Lcom/android/launcher2/Utilities;->sIconHeight:I

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    :cond_1
    :goto_0
    sget-object v8, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    const/high16 v5, 0x3f800000

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    if-lez v7, :cond_2

    if-gtz v6, :cond_5

    :cond_2
    sget v7, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sget v6, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sget v9, Lcom/android/launcher2/Utilities;->sIconHeight:I

    invoke-virtual {p0, v11, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    :goto_1
    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sub-int v2, v8, v7

    sget v8, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sub-int v3, v8, v6

    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sget v9, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v8, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v13}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    sget-object v8, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v8, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    int-to-float v9, v2

    mul-float/2addr v9, v12

    int-to-float v10, v3

    mul-float/2addr v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v8, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v8, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v8, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    sget-object v8, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0

    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    :cond_4
    instance-of v8, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v11, v11, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    if-gt v7, v8, :cond_6

    sget v8, Lcom/android/launcher2/Utilities;->sIconHeight:I

    if-le v6, v8, :cond_7

    :cond_6
    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    int-to-float v8, v8

    int-to-float v9, v7

    div-float/2addr v8, v9

    sget v9, Lcom/android/launcher2/Utilities;->sIconHeight:I

    int-to-float v9, v9

    int-to-float v10, v6

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v8, v7

    mul-float/2addr v8, v5

    float-to-int v7, v8

    int-to-float v8, v6

    mul-float/2addr v8, v5

    float-to-int v6, v8

    goto :goto_1

    :cond_7
    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/16 v9, 0xd4

    if-ne v8, v9, :cond_3

    const/16 v8, 0xc0

    if-ne v7, v8, :cond_3

    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    int-to-float v8, v8

    int-to-float v9, v7

    div-float/2addr v8, v9

    sget v9, Lcom/android/launcher2/Utilities;->sIconHeight:I

    int-to-float v9, v9

    int-to-float v10, v6

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v8, v7

    mul-float/2addr v8, v5

    float-to-int v7, v8

    int-to-float v8, v6

    mul-float/2addr v8, v5

    float-to-int v6, v8

    goto/16 :goto_1
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 5

    sget v2, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sput p2, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sput p2, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const-string v2, "Launcher.Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createIconBitmapForMenu sIconWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/launcher2/Utilities;->sIconWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sourceWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput v1, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sput v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    goto :goto_0
.end method

.method static drawDisabledBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v3

    :try_start_0
    sget v2, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static drawSelectedAllAppsBitmap(Landroid/graphics/Canvas;IIZLandroid/graphics/Bitmap;)V
    .locals 8

    sget-object v5, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v5

    :try_start_0
    sget v4, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Assertion failed: Utilities not initialized"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    const/4 v4, 0x0

    :try_start_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v4, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v4, 0x2

    new-array v3, v4, [I

    sget-object v4, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, v4, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, p1, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, p2, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    const/4 v4, 0x0

    aget v4, v3, v4

    int-to-float v4, v4

    add-float v6, v1, v4

    const/4 v4, 0x1

    aget v4, v3, v4

    int-to-float v4, v4

    add-float v7, v2, v4

    if-eqz p3, :cond_1

    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p0, v0, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    monitor-exit v5

    return-void

    :cond_1
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static drawVerticalLine(Landroid/view/View;Landroid/graphics/Canvas;I)V
    .locals 8

    invoke-static {}, Lcom/android/launcher2/Utilities;->ensureBlackPaint()V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    add-int v0, v6, p2

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    int-to-float v2, v7

    add-int v0, v6, p2

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v4, v0

    sget-object v5, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static declared-synchronized ensureBlackPaint()V
    .locals 3

    const-class v1, Lcom/android/launcher2/Utilities;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static ensureViewBgPaint(Landroid/view/View;)Landroid/graphics/Paint;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, 0x7f

    const/16 v3, 0x9b

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Utilities;->getRandomColor(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lcom/android/launcher2/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static generateRandomId()I
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static getDeviceRotation(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public static getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/launcher2/Utilities$1;

    invoke-direct {v2, p1, p0}, Lcom/android/launcher2/Utilities$1;-><init>(ILandroid/content/Context;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getLocationWithRespectTo([ILandroid/view/ViewParent;Landroid/view/View;)V
    .locals 9

    const/4 v5, 0x2

    const/high16 v8, 0x3f000000

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    array-length v4, p0

    if-ge v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-array v1, v5, [F

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    aput v4, v1, v6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v1, v7

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_3

    if-eq v3, p1, :cond_3

    move-object v2, v3

    check-cast v2, Landroid/view/View;

    aget v4, v1, v6

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v1, v6

    aget v4, v1, v7

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v1, v7

    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_2
    aget v4, v1, v6

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v1, v6

    aget v4, v1, v7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v1, v7

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_3
    aget v4, v1, v6

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p0, v6

    aget v4, v1, v7

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p0, v7

    return-void
.end method

.method public static getRandomColor(III)I
    .locals 4

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v2, v3, p1

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v1, v3, p1

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v0, v3, p1

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method public static getSampleSize(IIII)I
    .locals 5

    int-to-float v3, p1

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v3, p0

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-le v0, v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 6

    const/high16 v4, 0x42400000

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p1, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/launcher2/Utilities;->isCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/graphics/Point;->y:I

    mul-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v3, p1, Landroid/graphics/Point;->y:I

    mul-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :pswitch_1
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42280000

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hashCode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 10

    const/16 v9, 0x1e

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    const v4, 0x7f0c00ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sput v4, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const v4, 0x7f0c0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/android/launcher2/Utilities;->sIconNormalHeight:I

    sput v4, Lcom/android/launcher2/Utilities;->sIconNormalWidth:I

    sget-object v4, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a00000

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const v4, 0x3e4ccccd

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    sget-object v4, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    sget-object v4, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public static isCamera()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isRtlLayout()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadBitmapToDesiredDimension(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 15

    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move/from16 v0, p1

    invoke-static {p0, v0, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    move v3, v2

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eq v13, v14, :cond_4

    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_0

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-eqz v13, :cond_0

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eqz v13, :cond_0

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v13, v13

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v14, v14

    div-float v6, v13, v14

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v13, v13

    mul-float/2addr v13, v6

    float-to-int v3, v13

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v13, v13

    mul-float/2addr v13, v6

    float-to-int v2, v13

    :cond_0
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-ne v13, v14, :cond_5

    const/4 v8, 0x1

    :goto_1
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-le v13, v14, :cond_6

    const/4 v9, 0x1

    :goto_2
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-ge v13, v14, :cond_7

    const/4 v10, 0x1

    :goto_3
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p2

    if-gt v13, v0, :cond_1

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p3

    if-le v13, v0, :cond_8

    :cond_1
    const/4 v11, 0x1

    :goto_4
    move/from16 v0, p2

    if-gt v3, v0, :cond_2

    move/from16 v0, p3

    if-le v2, v0, :cond_9

    :cond_2
    const/4 v7, 0x1

    :goto_5
    if-eqz v9, :cond_a

    if-eqz v7, :cond_a

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v2, v0, v1}, Lcom/android/launcher2/Utilities;->getSampleSize(IIII)I

    move-result v13

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_3
    :goto_6
    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v13, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    invoke-static {p0, v0, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_d

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v4, v13}, Landroid/graphics/Bitmap;->setDensity(I)V

    :goto_7
    return-object v4

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    goto :goto_5

    :cond_a
    if-eqz v10, :cond_b

    if-eqz v11, :cond_b

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v14, v0, v1}, Lcom/android/launcher2/Utilities;->getSampleSize(IIII)I

    move-result v13

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_6

    :cond_b
    if-eqz v10, :cond_c

    if-eqz v7, :cond_c

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_6

    :cond_c
    if-eqz v8, :cond_3

    if-eqz v11, :cond_3

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v14, v0, v1}, Lcom/android/launcher2/Utilities;->getSampleSize(IIII)I

    move-result v13

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_6

    :cond_d
    const-string v13, "Launcher.Utilities"

    const-string v14, "loadBitmapToDesiredDimension() failed to decode image stream"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static loadSamsungWidgetThemePreview(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v11, 0x0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v10, p1, p2}, Lcom/android/launcher2/ThemeLoader;->loadSamsungWidgetPreviewBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v9, v0, v1}, Lcom/android/launcher2/Utilities;->scaleBitmapToDesiredDimension(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    :cond_0
    if-nez v11, :cond_1

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/Utilities;->loadWidgetPreview(Landroid/content/Context;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;

    move-result-object v11

    :cond_1
    return-object v11
.end method

.method public static loadWidgetPreview(Landroid/content/Context;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;
    .locals 30

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    const/4 v6, 0x3

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v29

    if-eqz v29, :cond_6

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/Utilities;->loadBitmapToDesiredDimension(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_0
    :goto_0
    if-nez v5, :cond_5

    const/4 v6, 0x0

    aget v17, p6, v6

    const/4 v6, 0x1

    aget v18, p6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v6, 0x7f0c00ad

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const v6, 0x7f0c01de

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    const v6, 0x7f0c01dd

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    mul-int v28, v22, v17

    mul-int v27, v21, v18

    move/from16 v8, v28

    move/from16 v9, v27

    move/from16 v0, v16

    int-to-float v6, v0

    const/high16 v7, 0x3e800000

    mul-float/2addr v6, v7

    float-to-int v0, v6

    move/from16 v23, v0

    const/high16 v20, 0x3f800000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/4 v6, 0x1

    move/from16 v0, v17

    if-gt v0, v6, :cond_7

    mul-int/lit8 v6, v23, 0x2

    add-int v9, v16, v6

    move v8, v9

    :goto_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x1

    move/from16 v0, v17

    if-ne v0, v6, :cond_1

    const/4 v6, 0x1

    move/from16 v0, v18

    if-eq v0, v6, :cond_2

    :cond_1
    const v6, 0x7f020010

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    :cond_2
    const/4 v10, 0x0

    :try_start_1
    div-int/lit8 v6, v8, 0x2

    int-to-float v6, v6

    move/from16 v0, v16

    int-to-float v7, v0

    mul-float v7, v7, v20

    const/high16 v11, 0x40000000

    div-float/2addr v7, v11

    sub-float/2addr v6, v7

    float-to-int v12, v6

    div-int/lit8 v6, v9, 0x2

    int-to-float v6, v6

    move/from16 v0, v16

    int-to-float v7, v0

    mul-float v7, v7, v20

    const/high16 v11, 0x40000000

    div-float/2addr v7, v11

    sub-float/2addr v6, v7

    float-to-int v13, v6

    if-lez p3, :cond_3

    const/4 v6, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_3
    if-nez v10, :cond_4

    const v6, 0x7f0200c4

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_4
    move/from16 v0, v16

    int-to-float v6, v0

    mul-float v6, v6, v20

    float-to-int v14, v6

    move/from16 v0, v16

    int-to-float v6, v0

    mul-float v6, v6, v20

    float-to-int v15, v6

    move-object v11, v5

    invoke-static/range {v10 .. v15}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    return-object v5

    :cond_6
    :try_start_2
    const-string v6, "Launcher.Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadWidgetPreview() : Unable to find package "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v19

    const-string v6, "Launcher.Utilities"

    const-string v7, "loadWidgetPreview() : Unable to find package"

    move-object/from16 v0, v19

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_7
    mul-int/lit8 v6, v23, 0x4

    add-int v9, v16, v6

    move v8, v9

    goto/16 :goto_1

    :cond_8
    move/from16 v0, v28

    move/from16 v1, v27

    if-le v0, v1, :cond_9

    move/from16 v0, v28

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    move/from16 v0, v27

    int-to-float v6, v0

    int-to-float v7, v8

    move/from16 v0, v28

    int-to-float v11, v0

    div-float/2addr v7, v11

    mul-float/2addr v6, v7

    float-to-int v9, v6

    int-to-float v6, v9

    mul-int/lit8 v7, v23, 0x2

    add-int v7, v7, v16

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v20

    goto/16 :goto_1

    :cond_9
    move/from16 v0, v27

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    move/from16 v0, v28

    int-to-float v6, v0

    int-to-float v7, v9

    move/from16 v0, v27

    int-to-float v11, v0

    div-float/2addr v7, v11

    mul-float/2addr v6, v7

    float-to-int v8, v6

    int-to-float v6, v8

    mul-int/lit8 v7, v23, 0x2

    add-int v7, v7, v16

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v20

    goto/16 :goto_1

    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public static loadWidgetThemePreview(Landroid/content/Context;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/launcher2/ThemeLoader;->loadWidgetPreviewBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p4, p5}, Lcom/android/launcher2/Utilities;->scaleBitmapToDesiredDimension(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    invoke-static/range {p0 .. p6}, Lcom/android/launcher2/Utilities;->loadWidgetPreview(Landroid/content/Context;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public static onDestroy()V
    .locals 1

    sget-object v0, Lcom/android/launcher2/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public static onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Z)V
    .locals 13

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {p0}, Lcom/android/launcher2/Utilities;->ensureViewBgPaint(Landroid/view/View;)Landroid/graphics/Paint;

    move-result-object v5

    int-to-float v1, v11

    int-to-float v2, v12

    add-int v0, v11, v10

    int-to-float v3, v0

    add-int v0, v12, v7

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/android/launcher2/Utilities;->ensureBlackPaint()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    sget-object v1, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    add-float v8, v0, v1

    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    int-to-float v0, v11

    int-to-float v1, v10

    sub-float/2addr v1, v9

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    add-int v1, v12, v7

    int-to-float v1, v1

    sub-float/2addr v1, v8

    sget-object v2, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static printCallStack()V
    .locals 3

    const-string v0, "Launcher.Utilities"

    const-string v1, "printCallStack"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 8

    const/high16 v6, 0x3f800000

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 8

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V
    .locals 4

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {p0, p2, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v2, -0x1

    if-eq p7, v2, :cond_0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p7, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    sget-object v1, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v1, Lcom/android/launcher2/Utilities;->sIconHeight:I

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_2
    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static roundToPow2(I)I
    .locals 3

    move v1, p0

    shr-int/lit8 p0, p0, 0x1

    const/high16 v0, 0x8000000

    :goto_0
    if-eqz v0, :cond_0

    and-int v2, p0, v0

    if-nez v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    or-int/2addr p0, v0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    if-eq p0, v1, :cond_2

    shl-int/lit8 p0, p0, 0x1

    :cond_2
    return p0
.end method

.method public static scaleBitmapToDesiredDimension(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v8, v1

    int-to-float v9, p1

    div-float v7, v8, v9

    int-to-float v8, v0

    int-to-float v9, p2

    div-float v5, v8, v9

    cmpl-float v8, v5, v7

    if-lez v8, :cond_2

    move v6, v5

    :goto_1
    const/4 v2, 0x0

    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-eqz v8, :cond_3

    int-to-float v8, v1

    div-float/2addr v8, v6

    float-to-int v4, v8

    int-to-float v8, v0

    div-float/2addr v8, v6

    float-to-int v3, v8

    const/4 v8, 0x0

    invoke-static {p0, v4, v3, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    move-object v2, p0

    goto :goto_0
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 5

    const v4, 0x7f0f009b

    const/4 v1, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/android/launcher2/Utilities;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Utilities;->mToast:Landroid/widget/Toast;

    :goto_0
    sget-object v0, Lcom/android/launcher2/Utilities;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher2/Utilities;->mToast:Landroid/widget/Toast;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
