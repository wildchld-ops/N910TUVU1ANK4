.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_5_LEVEL_CONNECTION_STRENGTH:[I

.field static final DATA_6_LEVEL_CONNECTION_STRENGTH:[I

.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x7

    const/4 v2, 0x6

    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_5_LEVEL_CONNECTION_STRENGTH:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_6_LEVEL_CONNECTION_STRENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    :array_0
    .array-data 4
        0x7f0b0061
        0x7f0b0062
        0x7f0b0063
        0x7f0b0064
        0x7f0b0065
    .end array-data

    :array_1
    .array-data 4
        0x7f0b0061
        0x7f0b0062
        0x7f0b0063
        0x7f0b0064
        0x7f0b007e
        0x7f0b0065
    .end array-data

    :array_2
    .array-data 4
        0x7f0b0061
        0x7f0b0062
        0x7f0b0063
        0x7f0b0064
        0x7f0b007e
        0x7f0b007f
        0x7f0b0065
    .end array-data

    :array_3
    .array-data 4
        0x7f0b0066
        0x7f0b0067
        0x7f0b0068
        0x7f0b0069
        0x7f0b006c
    .end array-data

    :array_4
    .array-data 4
        0x7f0b0066
        0x7f0b0067
        0x7f0b0068
        0x7f0b0069
        0x7f0b006a
        0x7f0b006c
    .end array-data

    :array_5
    .array-data 4
        0x7f0b0066
        0x7f0b0067
        0x7f0b0068
        0x7f0b0069
        0x7f0b006a
        0x7f0b006b
        0x7f0b006c
    .end array-data

    :array_6
    .array-data 4
        0x7f0b006e
        0x7f0b006f
        0x7f0b0070
        0x7f0b0071
        0x7f0b0072
    .end array-data

    :array_7
    .array-data 4
        0x7f0b0073
        0x7f0b0074
        0x7f0b0075
        0x7f0b0076
        0x7f0b0077
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
