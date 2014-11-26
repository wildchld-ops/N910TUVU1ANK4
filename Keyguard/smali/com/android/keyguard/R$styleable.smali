.class public final Lcom/android/keyguard/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BoundedLayout:[I

.field public static final KeyguardGlowStripView:[I

.field public static final KeyguardSecurityViewFlipper_Layout:[I

.field public static final MultiPaneChallengeLayout:[I

.field public static final MultiPaneChallengeLayout_Layout:[I

.field public static final NumPadKey:[I

.field public static final PagedView:[I

.field public static final SlidingChallengeLayout_Layout:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/keyguard/R$styleable;->BoundedLayout:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/keyguard/R$styleable;->KeyguardGlowStripView:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/keyguard/R$styleable;->KeyguardSecurityViewFlipper_Layout:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100c4

    aput v2, v0, v1

    sput-object v0, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout_Layout:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/keyguard/R$styleable;->NumPadKey:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/keyguard/R$styleable;->PagedView:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/keyguard/R$styleable;->SlidingChallengeLayout_Layout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f01000e
        0x7f01000f
    .end array-data

    :array_1
    .array-data 4
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
    .end array-data

    :array_2
    .array-data 4
        0x7f010009
        0x7f01000b
    .end array-data

    :array_3
    .array-data 4
        0x7f010000
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
    .end array-data

    :array_4
    .array-data 4
        0x7f01000c
        0x7f01000d
    .end array-data

    :array_5
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data

    :array_6
    .array-data 4
        0x7f010008
        0x7f010009
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
