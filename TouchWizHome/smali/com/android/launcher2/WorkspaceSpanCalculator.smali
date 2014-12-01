.class public final enum Lcom/android/launcher2/WorkspaceSpanCalculator;
.super Ljava/lang/Enum;
.source "WorkspaceSpanCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/WorkspaceSpanCalculator$1;,
        Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;,
        Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;,
        Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;,
        Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/WorkspaceSpanCalculator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/WorkspaceSpanCalculator;

.field public static final enum INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;


# instance fields
.field private mCellCountX:I

.field private mCellCountY:I

.field private mDensity:F

.field private mLandCellGapX:I

.field private mLandCellGapY:I

.field private mLandCellSizeX:I

.field private mLandCellSizeY:I

.field private mPaddingDimens:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

.field private mPaddingZero:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

.field private mPkgMgr:Landroid/content/pm/PackageManager;

.field private mPortCellGapX:I

.field private mPortCellGapY:I

.field private mPortCellSizeX:I

.field private mPortCellSizeY:I

.field private mResources:Landroid/content/res/Resources;

.field private mSpanCalcRoundDown:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;

.field private mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/WorkspaceSpanCalculator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher2/WorkspaceSpanCalculator;

    sget-object v1, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->$VALUES:[Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingZero:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    new-instance v0, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    invoke-direct {v0, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;-><init>(Lcom/android/launcher2/WorkspaceSpanCalculator$1;)V

    iput-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    new-instance v0, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;

    invoke-direct {v0, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;-><init>(Lcom/android/launcher2/WorkspaceSpanCalculator$1;)V

    iput-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundDown:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;

    return-void
.end method

.method private getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I
    .locals 14

    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v11, v0

    const/4 v12, 0x2

    if-ge v11, v12, :cond_1

    :cond_0
    const/4 v11, 0x2

    new-array v0, v11, [I

    move-object/from16 p5, v0

    :cond_1
    if-eqz p7, :cond_2

    iget-object v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0c0251

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0c0250

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v11, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, p1, v8, v11}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v9

    const/4 v11, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p2

    invoke-interface {v0, v1, v8, v11}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v10

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountX:I

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountY:I

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    :goto_0
    return-object p5

    :cond_2
    iget v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeX:I

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapX:I

    move-object/from16 v0, p6

    invoke-interface {v0, p1, v11, v12}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v6

    iget v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeY:I

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapY:I

    move-object/from16 v0, p6

    move/from16 v1, p2

    invoke-interface {v0, v1, v11, v12}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v7

    iget v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeX:I

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    move-object/from16 v0, p6

    move/from16 v1, p3

    invoke-interface {v0, v1, v11, v12}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v4

    iget v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeY:I

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-interface {v0, v1, v11, v12}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v5

    iget-object v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v12, 0x258

    if-lt v11, v12, :cond_3

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountX:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountY:I

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountX:I

    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountY:I

    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    goto :goto_0
.end method

.method private useGEDMode(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/WorkspaceSpanCalculator;
    .locals 1

    const-class v0, Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/WorkspaceSpanCalculator;
    .locals 1

    sget-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->$VALUES:[Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-virtual {v0}, [Lcom/android/launcher2/WorkspaceSpanCalculator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-object v0
.end method


# virtual methods
.method public getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .locals 7

    iget-object v2, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingZero:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingDimens:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    :cond_0
    move-object v3, v2

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    move-object v3, v2

    goto :goto_0
.end method

.method public getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .locals 13

    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x4

    new-array p2, v0, [I

    :cond_1
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v8

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    add-int/2addr v0, v3

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    add-int v1, v0, v3

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    add-int/2addr v0, v3

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    add-int v2, v0, v3

    invoke-direct {p0, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->useGEDMode(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v7

    iget-object v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    move-object v0, p0

    move v3, v1

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I

    move-result-object p2

    const/4 v0, 0x2

    const/4 v3, -0x1

    aput v3, p2, v0

    const/4 v0, 0x3

    const/4 v3, -0x1

    aput v3, p2, v0

    instance-of v0, p1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v0, :cond_3

    move-object v11, p1

    check-cast v11, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {v11}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getMaxResizeWidth()I

    move-result v10

    invoke-virtual {v11}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getMaxResizeHeight()I

    move-result v9

    iget v0, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    add-int/2addr v0, v3

    sub-int v1, v10, v0

    iget v0, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    add-int/2addr v0, v3

    sub-int v2, v9, v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundDown:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;

    move-object v0, p0

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I

    move-result-object v12

    if-lez v10, :cond_2

    const v0, 0x7fffffff

    if-ge v10, v0, :cond_2

    const/4 v0, 0x2

    const/4 v3, 0x0

    aget v3, p2, v3

    iget v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountX:I

    const/4 v5, 0x0

    aget v5, v12, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p2, v0

    :cond_2
    if-lez v9, :cond_3

    const v0, 0x7fffffff

    if-ge v9, v0, :cond_3

    const/4 v0, 0x3

    const/4 v3, 0x1

    aget v3, p2, v3

    iget v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountY:I

    const/4 v5, 0x1

    aget v5, v12, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p2, v0

    :cond_3
    return-object p2
.end method

.method public getSpanForAppWidget(Landroid/appwidget/AppWidgetProviderInfo;II[I)[I
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->useGEDMode(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v7

    iget-object v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getSpanForSamsungWidget(IIII[I)[I
    .locals 8

    iget-object v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getSpanForSurfaceWidget(II[I)[I
    .locals 8

    iget-object v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .locals 12

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v8

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    add-int/2addr v0, v3

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    add-int v1, v0, v3

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    add-int/2addr v0, v3

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    add-int v2, v0, v3

    invoke-direct {p0, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->useGEDMode(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v7

    iget-object v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    move-object v0, p0

    move v3, v1

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I

    move-result-object v9

    iget v10, p1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v10, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v11

    and-int/lit8 v0, v10, 0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x0

    aget v4, v11, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v9, v0

    const/4 v0, -0x1

    const/4 v3, 0x2

    aget v3, v11, v3

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x2

    aget v4, v11, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v9, v0

    :cond_0
    and-int/lit8 v0, v10, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    const/4 v3, 0x1

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v11, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v9, v0

    const/4 v0, -0x1

    const/4 v3, 0x3

    aget v3, v11, v3

    if-eq v0, v3, :cond_1

    const/4 v0, 0x1

    const/4 v3, 0x1

    aget v3, v9, v3

    const/4 v4, 0x3

    aget v4, v11, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v9, v0

    :cond_1
    return-object v9
.end method

.method public setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c00af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c00b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c00b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c00ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v4, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    invoke-direct {v4, v1, v3, v2, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingDimens:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e0023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e0024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c019e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c019b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c019d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c019a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0195

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0198

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0194

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0197

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDensity:F

    return-void
.end method

.method public updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V
    .locals 10

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    const-string v0, "resize_widgets"

    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    :cond_0
    iget v7, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeX:I

    iget v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeY:I

    iget v9, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    iget v8, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    mul-int v0, p3, v7

    add-int/lit8 v1, p3, -0x1

    mul-int/2addr v1, v9

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDensity:F

    div-float/2addr v0, v1

    float-to-int v4, v0

    mul-int v0, p4, v6

    add-int/lit8 v1, p4, -0x1

    mul-int/2addr v1, v8

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDensity:F

    div-float/2addr v0, v1

    float-to-int v3, v0

    iget v7, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeX:I

    iget v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeY:I

    iget v9, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapX:I

    iget v8, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapY:I

    mul-int v0, p3, v7

    add-int/lit8 v1, p3, -0x1

    mul-int/2addr v1, v9

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDensity:F

    div-float/2addr v0, v1

    float-to-int v2, v0

    mul-int v0, p4, v6

    add-int/lit8 v1, p4, -0x1

    mul-int/2addr v1, v8

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDensity:F

    div-float/2addr v0, v1

    float-to-int v5, v0

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    return-void
.end method
