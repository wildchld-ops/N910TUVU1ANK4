.class public Lcom/sec/android/app/camera/PositionGuide;
.super Ljava/lang/Object;
.source "PositionGuide.java"


# static fields
.field public static final FACE_XY_CHANGED_DP:F = 50.0f

.field public static final MEDIUM_SHOT_AREA_DISTANCE_MAX_DP:F = 88.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_16_9_UP_MARGIN_DP:F = 88.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_1_1_UP_MARGIN_DP:F = 88.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_4_3_UP_MARGIN_DP:F = 88.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_HEGHT_DP:F = 128.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_HEGHT_DP_1_1:F = 120.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_HEGHT_DP_4_3:F = 128.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_WIDTH_DP:F = 220.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_WIDTH_DP_1_1:F = 128.0f

.field public static final MEDIUM_SHOT_HORIZONTAL_WIDTH_DP_4_3:F = 168.0f

.field public static final MEDIUM_SHOT_VERTICAL_16_9_LEFT_MARGIN_DP:F = 223.0f

.field public static final MEDIUM_SHOT_VERTICAL_1_1_LEFT_MARGIN_DP:F = 88.0f

.field public static final MEDIUM_SHOT_VERTICAL_4_3_LEFT_MARGIN_DP:F = 143.0f

.field public static final MEDIUM_SHOT_VERTICAL_HEIGHT_DP:F = 120.0f

.field public static final MEDIUM_SHOT_VERTICAL_HEIGHT_DP_1_1:F = 120.0f

.field public static final MEDIUM_SHOT_VERTICAL_HEIGHT_DP_4_3:F = 120.0f

.field public static final MEDIUM_SHOT_VERTICAL_WIDTH_DP:F = 128.0f

.field public static final MEDIUM_SHOT_VERTICAL_WIDTH_DP_1_1:F = 128.0f

.field public static final MEDIUM_SHOT_VERTICAL_WIDTH_DP_4_3:F = 128.0f

.field public static final ORIENTATION_COMPENSATAION_HORIZONTAL:I = 0xb4

.field public static final ORIENTATION_COMPENSATAION_L_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_COMPENSATAION_L_VERTICAL:I = 0x5a

.field public static final ORIENTATION_COMPENSATAION_VERTICAL:I = 0x10e

.field public static final PREVIEW_GALAXY_RATIO_16_9:I = 0x1

.field public static final PREVIEW_GALAXY_RATIO_1_1:I = 0x4

.field public static final PREVIEW_GALAXY_RATIO_4_3:I = 0x2

.field public static final PREVIEW_GALAXY_RATIO_NONE:I = 0x3

.field public static final PREVIEW_HALF_SIZE_HEIGHT_DP:F = 180.0f

.field public static final PREVIEW_HALF_SIZE_HEIGHT_DP_1_1:F = 180.0f

.field public static final PREVIEW_HALF_SIZE_HEIGHT_DP_4_3:F = 180.0f

.field public static final PREVIEW_HALF_SIZE_WIDTH_DP:F = 320.0f

.field public static final PREVIEW_HALF_SIZE_WIDTH_DP_1_1:F = 180.0f

.field public static final PREVIEW_HALF_SIZE_WIDTH_DP_4_3:F = 240.0f

.field public static final PREVIEW_SIZE_HEIGHT_DP:F = 360.0f

.field public static final PREVIEW_SIZE_HEIGHT_DP_1_1:F = 360.0f

.field public static final PREVIEW_SIZE_HEIGHT_DP_4_3:F = 360.0f

.field public static final PREVIEW_SIZE_WIDTH_DP:F = 640.0f

.field public static final PREVIEW_SIZE_WIDTH_DP_1_1:F = 360.0f

.field public static final PREVIEW_SIZE_WIDTH_DP_4_3:F = 480.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dpToPx(FLandroid/content/Context;)F
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method
