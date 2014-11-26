.class public Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLBatteryIndicator.java"


# static fields
.field private static final BATTERY_INDICATOR_ICON_POS_X:I

.field public static final CHARGING:I = 0x3

.field public static final LEVEL_0_TO_4:I = 0x0

.field public static final LEVEL_16_TO_28:I = 0x2

.field public static final LEVEL_5_TO_15:I = 0x1

.field public static final LEVEL_INVISIBLE:I = 0x4

.field public static final MAX_LEVEL:I = 0x3


# instance fields
.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a0072

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 6
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # F
    .param p3    # F

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mLevel:I

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v2, v2

    const v3, 0x7f0204bd

    invoke-direct {v1, p1, v2, v4, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v2, v2

    const v3, 0x7f0204be

    invoke-direct {v1, p1, v2, v4, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v2, v2

    const v3, 0x7f0204bf

    invoke-direct {v1, p1, v2, v4, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v2, v2

    const v3, 0x7f0204c0

    invoke-direct {v1, p1, v2, v4, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public setLevel(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    if-le p1, v4, :cond_1

    :cond_0
    if-ne p1, v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v4, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mLevel:I

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mLevel:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method
