.class public final enum Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;
.super Ljava/lang/Enum;
.source "FingerCircle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

.field public static final enum BLUELINE:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

.field public static final enum CLEAN:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

.field public static final enum DEFAULT:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

.field public static final enum FAILED:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

.field public static final enum WHITELINE:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    const-string v1, "CLEAN"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->CLEAN:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    new-instance v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->DEFAULT:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    new-instance v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    const-string v1, "BLUELINE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->BLUELINE:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    new-instance v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    const-string v1, "WHITELINE"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->WHITELINE:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    new-instance v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->FAILED:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    sget-object v1, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->CLEAN:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->DEFAULT:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->BLUELINE:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->WHITELINE:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->FAILED:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->$VALUES:[Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;
    .locals 1

    const-class v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;
    .locals 1

    sget-object v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->$VALUES:[Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    return-object v0
.end method
