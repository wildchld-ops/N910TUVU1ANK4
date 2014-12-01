.class public final enum Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;
.super Ljava/lang/Enum;
.source "FingerprintEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EffectStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

.field public static final enum CLEAN:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

.field public static final enum COMPLETE:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

.field public static final enum SCANNING_FIRST:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

.field public static final enum SCANNING_SECOND:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    const-string v1, "CLEAN"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->CLEAN:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    new-instance v0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    const-string v1, "SCANNING_FIRST"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->SCANNING_FIRST:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    new-instance v0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    const-string v1, "SCANNING_SECOND"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->SCANNING_SECOND:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    new-instance v0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->COMPLETE:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    sget-object v1, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->CLEAN:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->SCANNING_FIRST:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->SCANNING_SECOND:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->COMPLETE:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->$VALUES:[Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;
    .locals 1

    const-class v0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;
    .locals 1

    sget-object v0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->$VALUES:[Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    return-object v0
.end method
