.class public Lcom/android/mms/ui/FontSizeController;
.super Ljava/lang/Object;
.source "FontSizeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/FontSizeController$FontSizeAdapter;,
        Lcom/android/mms/ui/FontSizeController$OnFontSizeSettingChangedListener;
    }
.end annotation


# static fields
.field private static final BUBBLE_FONT_SIZE:[F

.field private static final BUBBLE_FONT_SIZE_7_STEP:[F

.field private static final BUBBLE_FONT_SIZE_WVGA:[F

.field private static final FOLDER_MODEL_FONT_SIZE_RATE:[F

.field private static final FONT_SIZE_7_STEP_BUBBLE_NORMAL:F = 18.0f

.field private static final FONT_SIZE_7_STEP_EDIT_NORMAL:F = 19.0f

.field private static final FONT_SIZE_7_STEP_EXCEPTION_HUGE:F = 51.0f

.field private static final FONT_SIZE_7_STEP_RECIPIENTS_NORMAL:F = 19.0f

.field private static final FONT_SIZE_7_STEP_VEIWER_NORMAL:F = 19.0f

.field private static final FONT_SIZE_BUBBLE_NORMAL:F = 19.0f

.field private static final FONT_SIZE_EDIT_NORMAL:F = 19.0f

.field private static final FONT_SIZE_EXCEPTION_HUGE:F = 58.0f

.field public static final FONT_SIZE_INDEX_EXTRA_LARGE_7_STEP:I = 0x6

.field public static final FONT_SIZE_INDEX_EXTRA_SMALL_7_STEP:I = 0x2

.field public static final FONT_SIZE_INDEX_FOLLOW_SYSTEM:I = 0x0

.field public static final FONT_SIZE_INDEX_HUGE:I = 0x5

.field public static final FONT_SIZE_INDEX_HUGE_7_STEP:I = 0x7

.field public static final FONT_SIZE_INDEX_LARGE:I = 0x4

.field public static final FONT_SIZE_INDEX_LARGE_7_STEP:I = 0x5

.field public static final FONT_SIZE_INDEX_MEDIUM_7_STEP:I = 0x4

.field public static final FONT_SIZE_INDEX_NORMAL:I = 0x3

.field public static final FONT_SIZE_INDEX_SMALL:I = 0x2

.field public static final FONT_SIZE_INDEX_SMALL_7_STEP:I = 0x3

.field public static final FONT_SIZE_INDEX_TINY:I = 0x1

.field public static final FONT_SIZE_INDEX_TINY_7_STEP:I = 0x1

.field private static final FONT_SIZE_NAME_7_STEP_DEFAULT:Ljava/lang/String; = "Small"

.field private static final FONT_SIZE_NAME_7_STEP_EXTRA_LARGE:Ljava/lang/String; = "Extra large"

.field private static final FONT_SIZE_NAME_7_STEP_EXTRA_SMALL:Ljava/lang/String; = "Extra small"

.field private static final FONT_SIZE_NAME_7_STEP_HUGE:Ljava/lang/String; = "Huge"

.field private static final FONT_SIZE_NAME_7_STEP_LARGE:Ljava/lang/String; = "Large"

.field private static final FONT_SIZE_NAME_7_STEP_MEDIUM:Ljava/lang/String; = "Medium"

.field private static final FONT_SIZE_NAME_7_STEP_SMALL:Ljava/lang/String; = "Small"

.field private static final FONT_SIZE_NAME_7_STEP_TINY:Ljava/lang/String; = "Tiny"

.field private static final FONT_SIZE_NAME_DEFAULT:Ljava/lang/String; = "Normal"

.field private static final FONT_SIZE_NAME_FOLLOW_SYTEM:Ljava/lang/String; = "Follow system font size"

.field private static final FONT_SIZE_NAME_HUGE:Ljava/lang/String; = "Huge"

.field private static final FONT_SIZE_NAME_LARGE:Ljava/lang/String; = "Large"

.field private static final FONT_SIZE_NAME_NORMAL:Ljava/lang/String; = "Normal"

.field private static final FONT_SIZE_NAME_SMALL:Ljava/lang/String; = "Small"

.field private static final FONT_SIZE_NAME_TINY:Ljava/lang/String; = "Tiny"

.field private static final FONT_SIZE_RATE:[F

.field private static final FONT_SIZE_RATE_7_STEP:[F

.field private static final FONT_SIZE_RECIPIENTS_NORMAL:F = 18.0f

.field public static final FONT_SIZE_TYPE_BUBBLE:I = 0x2

.field public static final FONT_SIZE_TYPE_EDIT:I = 0x3

.field public static final FONT_SIZE_TYPE_RECIPIENTS:I = 0x1

.field public static final FONT_SIZE_TYPE_RESTRICTED:I = 0x5

.field public static final FONT_SIZE_TYPE_VIEWER:I = 0x4

.field private static final FONT_SIZE_VEIWER_NORMAL:F = 19.0f

.field private static final FOR_SETTING:I = 0x1

.field private static final FOR_UI:I = 0x0

.field private static final KOR_FONT_SIZE_BUBBLE_NORMAL:F = 21.0f

.field private static final KOR_FONT_SIZE_EDIT_NORMAL:F = 21.0f

.field private static final KOR_FONT_SIZE_RECIPIENTS_NORMAL:F = 20.0f

.field private static final KOR_FONT_SIZE_VEIWER_NORMAL:F = 21.0f

.field private static final KOR_FULLHD_FONT_SIZE_RATE:[F

.field private static final KOR_FULLHD_RECIPIENTS_FONT_SIZE_RATE:[F

.field private static final KOR_RECIPIENTS_FONT_SIZE_RATE:[F

.field private static final T0_FONT_SIZE_BUBBLE_NORMAL:F = 22.0f

.field private static final T0_FONT_SIZE_EDIT_NORMAL:F = 22.0f

.field private static final T0_FONT_SIZE_EXCEPTION_HUGE:F = 52.0f

.field private static final T0_FONT_SIZE_RATE:[F

.field private static final T0_FONT_SIZE_RECIPIENTS_NORMAL:F = 22.0f

.field private static final T0_FONT_SIZE_VEIWER_NORMAL:F = 17.0f

.field private static final TAG:Ljava/lang/String; = "Mms/FontSizeController"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x6

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE_WVGA:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->FONT_SIZE_RATE:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_RECIPIENTS_FONT_SIZE_RATE:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_FULLHD_FONT_SIZE_RATE:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_FULLHD_RECIPIENTS_FONT_SIZE_RATE:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->T0_FONT_SIZE_RATE:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->FOLDER_MODEL_FONT_SIZE_RATE:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->FONT_SIZE_RATE_7_STEP:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE_7_STEP:[F

    return-void

    :array_0
    .array-data 4
        0x41b00000
        0x41980000
        0x41a00000
        0x41b00000
        0x41e80000
        0x42640000
    .end array-data

    :array_1
    .array-data 4
        0x41900000
        0x41600000
        0x41800000
        0x41900000
        0x41c00000
        0x41f80000
    .end array-data

    :array_2
    .array-data 4
        0x3f800000
        0x3f428f5c
        0x3f666666
        0x3f800000
        0x3fb0a3d7
        0x3fb0a3d7
    .end array-data

    :array_3
    .array-data 4
        0x3f800000
        0x3f428f5c
        0x3f666666
        0x3f800000
        0x3f9c28f6
        0x3faa3d71
    .end array-data

    :array_4
    .array-data 4
        0x3f800000
        0x3f3851ec
        0x3f51eb85
        0x3f800000
        0x3fab851f
        0x3fb0a3d7
    .end array-data

    :array_5
    .array-data 4
        0x3f800000
        0x3f4ccccd
        0x3f666666
        0x3f800000
        0x3f8ccccd
        0x3f99999a
    .end array-data

    :array_6
    .array-data 4
        0x3f800000
        0x3f59999a
        0x3f6e147b
        0x3f800000
        0x3fa66666
        0x3fe66666
    .end array-data

    :array_7
    .array-data 4
        0x3fb0a3d7
        0x3f6e147b
        0x3f99999a
        0x3fb0a3d7
        0x3fcccccd
        0x3fe66666
    .end array-data

    :array_8
    .array-data 4
        0x3f800000
        0x3f4a3d71
        0x3f63d70a
        0x3f800000
        0x3f8ccccd
        0x3f9ae148
        0x3faf5c29
        0x3fdd70a4
    .end array-data

    :array_9
    .array-data 4
        0x41980000
        0x41700000
        0x41880000
        0x41980000
        0x41a80000
        0x41b80000
        0x41d00000
        0x424c0000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decreaseFontSize(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getFontSizeIndexForUi()I

    move-result v1

    invoke-static {v1}, Lcom/android/mms/ui/FontSizeController;->nameOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/FontSizeController;->getSmaller(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setFontSizeName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static ensureValid(I)I
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    if-le p0, v0, :cond_1

    const/4 p0, 0x7

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-ge p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-le p0, v0, :cond_3

    const/4 p0, 0x5

    goto :goto_0

    :cond_3
    if-ge p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0
.end method

.method private static getBigger(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v1, "Follow system font size"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Lcom/android/mms/ui/FontSizeController;->ensureValid(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/ui/FontSizeController;->nameOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getBubbleFontSizeArray()[F
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE_7_STEP:[F

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableWvgaFontSize()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE_WVGA:[F

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE:[F

    goto :goto_0
.end method

.method public static getBubbleFontSizeTiny()F
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getBubbleFontSizeArray()[F

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v2

    if-eqz v2, :cond_0

    aget v0, v1, v3

    :goto_0
    return v0

    :cond_0
    aget v0, v1, v3

    goto :goto_0
.end method

.method public static getFontSize(I)F
    .locals 1

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getFontSizeIndexForUi()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/FontSizeController;->getFontSize(II)F

    move-result v0

    return v0
.end method

.method public static getFontSize(II)F
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/mms/ui/FontSizeController;->getFontSize7StepInternal(II)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/mms/ui/FontSizeController;->getFontSizeInternal(II)F

    move-result v0

    goto :goto_0
.end method

.method private static getFontSize7StepInternal(II)F
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->getFontSizeNormal(I)F

    move-result v1

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getBubbleFontSizeArray()[F

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/mms/ui/MessageUtils;->isIndexValid(I[F)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x3

    :cond_0
    packed-switch p0, :pswitch_data_0

    :goto_0
    const/4 v2, 0x7

    if-ne v2, p1, :cond_1

    packed-switch p0, :pswitch_data_1

    :cond_1
    :goto_1
    return v0

    :pswitch_0
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->getFontSizeRateArray(I)[F

    move-result-object v2

    aget v2, v2, v3

    mul-float v0, v2, v1

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x1

    if-ge p1, v2, :cond_3

    const/4 p1, 0x1

    :cond_2
    :goto_2
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->getFontSizeRateArray(I)[F

    move-result-object v2

    aget v2, v2, p1

    mul-float v0, v2, v1

    goto :goto_0

    :cond_3
    if-le p1, v3, :cond_2

    const/4 p1, 0x3

    goto :goto_2

    :pswitch_2
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->getFontSizeRateArray(I)[F

    move-result-object v2

    aget v2, v2, p1

    mul-float v0, v2, v1

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->getFontSizeRateArray(I)[F

    move-result-object v2

    aget v2, v2, v3

    mul-float v0, v2, v1

    goto :goto_1

    :pswitch_4
    const/high16 v0, 0x424c0000

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static getFontSizeIndex(Landroid/content/Context;I)I
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->isFollowSystemFontSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/FontSizeController;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Medium"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/FontSizeController;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "Normal"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/FontSizeController;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Large"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/FontSizeController;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "Follow system font size"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/FontSizeController;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getFontSizeIndexForSetting()I
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/FontSizeController;->getFontSizeIndex(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getFontSizeIndexForUi()I
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/FontSizeController;->getFontSizeIndex(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method private static getFontSizeInternal(II)F
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->getFontSizeNormal(I)F

    move-result v1

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getBubbleFontSizeArray()[F

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/mms/ui/MessageUtils;->isIndexValid(I[F)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x3

    :cond_0
    packed-switch p0, :pswitch_data_0

    :goto_0
    const/4 v2, 0x5

    if-ne v2, p1, :cond_1

    packed-switch p0, :pswitch_data_1

    :cond_1
    :goto_1
    return v0

    :pswitch_0
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->getFontSizeRateArray(I)[F

    move-result-object v2

    aget v2, v2, v3

    mul-float v0, v2, v1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->useRecipientsFontSizeCustomizeForKor()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    if-ge p1, v2, :cond_5

    const/4 p1, 0x1

    :cond_4
    :goto_2
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->getFontSizeRateArray(I)[F

    move-result-object v2

    aget v2, v2, p1

    mul-float v0, v2, v1

    goto :goto_0

    :cond_5
    if-le p1, v3, :cond_4

    const/4 p1, 0x3

    goto :goto_2

    :pswitch_2
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->getFontSizeRateArray(I)[F

    move-result-object v2

    aget v2, v2, p1

    mul-float v0, v2, v1

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->getFontSizeRateArray(I)[F

    move-result-object v2

    aget v2, v2, v3

    mul-float v0, v2, v1

    goto :goto_1

    :pswitch_4
    const/high16 v0, 0x424c0000

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static getFontSizeNormal(I)F
    .locals 2

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x41980000

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v0, 0x41b00000

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v0, 0x41a00000

    goto :goto_0

    :cond_2
    const/high16 v0, 0x41900000

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v0, 0x41900000

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v0, 0x41b00000

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v0, 0x41a80000

    goto :goto_0

    :cond_5
    const/high16 v0, 0x41980000

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v0, 0x41980000

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 v0, 0x41b00000

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_8

    const/high16 v0, 0x41a80000

    goto :goto_0

    :cond_8
    const/high16 v0, 0x41980000

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_9

    const/high16 v0, 0x41980000

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_a

    const/high16 v0, 0x41b00000

    goto :goto_0

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_b

    const/high16 v0, 0x41a00000

    goto :goto_0

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->useRecipientsFontSizeCustomizeForKor()Z

    move-result v1

    if-eqz v1, :cond_c

    const/high16 v0, 0x41900000

    goto :goto_0

    :cond_c
    const/high16 v0, 0x41980000

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_d

    const/high16 v0, 0x41980000

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_e

    const/high16 v0, 0x41880000

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_f

    const/high16 v0, 0x41a80000

    goto/16 :goto_0

    :cond_f
    const/high16 v0, 0x41980000

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static getFontSizeRateArray(I)[F
    .locals 3

    const/4 v2, 0x5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/mms/ui/FontSizeController;->FONT_SIZE_RATE_7_STEP:[F

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/mms/ui/FontSizeController;->FOLDER_MODEL_FONT_SIZE_RATE:[F

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/mms/ui/FontSizeController;->T0_FONT_SIZE_RATE:[F

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne p0, v2, :cond_3

    sget-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_FULLHD_RECIPIENTS_FONT_SIZE_RATE:[F

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_FULLHD_FONT_SIZE_RATE:[F

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->useRecipientsFontSizeCustomizeForKor()Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne p0, v2, :cond_5

    sget-object v0, Lcom/android/mms/ui/FontSizeController;->KOR_RECIPIENTS_FONT_SIZE_RATE:[F

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/mms/ui/FontSizeController;->FONT_SIZE_RATE:[F

    goto :goto_0
.end method

.method protected static getFontSizeSettingDialogFontSize(I)F
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    new-array v0, v2, [I

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v4

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v5

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v6

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v7

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v8

    const/4 v2, 0x5

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const/4 v2, 0x6

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const/4 v2, 0x7

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    :goto_0
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->isIndexValid(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v2, v0, p0

    int-to-float v1, v2

    :cond_0
    const-string v2, "Mms/FontSizeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFontSizePreferenceDialogFontSize() returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x6

    new-array v0, v2, [I

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v4

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v5

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v6

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v7

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v8

    const/4 v2, 0x5

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    goto/16 :goto_0
.end method

.method private static getSmaller(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v1, "Follow system font size"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    invoke-static {v0}, Lcom/android/mms/ui/FontSizeController;->ensureValid(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/ui/FontSizeController;->nameOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getSystemFontSizeIndex(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static increaseFontSize(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getFontSizeIndexForUi()I

    move-result v1

    invoke-static {v1}, Lcom/android/mms/ui/FontSizeController;->nameOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/FontSizeController;->getBigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setFontSizeName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static indexOf(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Follow system font size"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "Tiny"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "Extra small"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "Small"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v1, "Medium"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const-string v1, "Large"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const-string v1, "Extra large"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    const-string v1, "Huge"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x7

    goto :goto_0

    :cond_7
    const/4 v0, 0x3

    goto :goto_0

    :cond_8
    const-string v1, "Follow system font size"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_0

    :cond_9
    const-string v1, "Tiny"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    const-string v1, "Small"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x2

    goto :goto_0

    :cond_b
    const-string v1, "Normal"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x3

    goto :goto_0

    :cond_c
    const-string v1, "Large"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x4

    goto :goto_0

    :cond_d
    const-string v1, "Huge"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x3

    goto/16 :goto_0
.end method

.method public static isFollowSystemFontSize()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "Follow system font size"

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    const-string v3, "Follow system font size"

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nameOf(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Small"

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Follow system font size"

    goto :goto_0

    :pswitch_1
    const-string v0, "Tiny"

    goto :goto_0

    :pswitch_2
    const-string v0, "Extra small"

    goto :goto_0

    :pswitch_3
    const-string v0, "Small"

    goto :goto_0

    :pswitch_4
    const-string v0, "Medium"

    goto :goto_0

    :pswitch_5
    const-string v0, "Large"

    goto :goto_0

    :pswitch_6
    const-string v0, "Extra large"

    goto :goto_0

    :pswitch_7
    const-string v0, "Huge"

    goto :goto_0

    :cond_0
    const-string v0, "Normal"

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_8
    const-string v0, "Follow system font size"

    goto :goto_0

    :pswitch_9
    const-string v0, "Tiny"

    goto :goto_0

    :pswitch_a
    const-string v0, "Small"

    goto :goto_0

    :pswitch_b
    const-string v0, "Normal"

    goto :goto_0

    :pswitch_c
    const-string v0, "Large"

    goto :goto_0

    :pswitch_d
    const-string v0, "Huge"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static showFontSizeSettingDialog(Landroid/content/Context;Lcom/android/mms/ui/FontSizeController$OnFontSizeSettingChangedListener;)V
    .locals 5

    new-instance v1, Lcom/android/mms/ui/FontSizeController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/FontSizeController$1;-><init>(Landroid/content/Context;Lcom/android/mms/ui/FontSizeController$OnFontSizeSettingChangedListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c03d0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c0183

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getFontSizeIndexForSetting()I

    move-result v2

    new-instance v3, Lcom/android/mms/ui/FontSizeController$FontSizeAdapter;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/FontSizeController$FontSizeAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
