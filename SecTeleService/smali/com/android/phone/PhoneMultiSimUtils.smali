.class public Lcom/android/phone/PhoneMultiSimUtils;
.super Ljava/lang/Object;
.source "PhoneMultiSimUtils.java"


# static fields
.field private static ONE_HAND_DIRECTION:Ljava/lang/String;

.field private static mIsOnehandOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneMultiSimUtils;->mIsOnehandOn:Z

    const-string v0, "onehand_direction"

    sput-object v0, Lcom/android/phone/PhoneMultiSimUtils;->ONE_HAND_DIRECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOneSIMcardsInsertedInSlot2()Z
    .locals 3

    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
