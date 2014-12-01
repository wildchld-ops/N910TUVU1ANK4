.class public Landroid/media/SecMMFWConfiguration;
.super Ljava/lang/Object;
.source "SecMMFWConfiguration.java"


# static fields
.field public static final SEC_PRODUCT_FEATURE_MMFW_THREE_D:I = 0x6

.field public static final SEC_PRODUCT_FEATURE_MMFW_TICK_PLAY:I = 0x3

.field public static final SEC_PRODUCT_FEATURE_MMFW_VIDEO_CAPTURE:I = 0x1

.field public static final SEC_PRODUCT_FEATURE_MMFW_VIDEO_PREVIEW_SEEK_HOVERING:I = 0x2

.field public static final SEC_PRODUCT_FEATURE_MMFW_VIDEO_ZOOM:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabledFeature(I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
