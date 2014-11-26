.class public Lcom/android/server/SsrmService;
.super Ljava/lang/Object;
.source "SsrmService.java"


# static fields
.field public static final AIR_VIEW_PROVIDER_NAME:Ljava/lang/String; = ""

.field public static final BASE_MODEL:Ljava/lang/String; = "tf"

.field public static final COMMON_GESTURE_WITH_FINGERHOVER:Z

.field public static final COMMON_HW_VENDOR_CONFIG:Ljava/lang/String; = "Combination"

.field public static final COMMON_REGION:Ljava/lang/String; = "USA"

.field public static final GMS_BUNDLING:Z = false

.field public static final SIOP_FILENAME:Ljava/lang/String; = "siop_jbp_empty"

.field public static final SSRM_FILENAME:Ljava/lang/String; = "ssrmv3_tf_xx"

.field public static final WLUC_SUPPORT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_GESTURE_WITH_FINGERHOVER"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SsrmService;->COMMON_GESTURE_WITH_FINGERHOVER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
