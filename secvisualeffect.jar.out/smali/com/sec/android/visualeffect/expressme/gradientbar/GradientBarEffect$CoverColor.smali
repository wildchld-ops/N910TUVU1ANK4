.class public final enum Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;
.super Ljava/lang/Enum;
.source "GradientBarEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoverColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

.field public static final enum NAVY:Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

.field public static final enum WHITE:Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

    const-string v1, "NAVY"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;->NAVY:Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

    new-instance v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

    const-string v1, "WHITE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;->WHITE:Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

    sget-object v1, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;->NAVY:Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;->WHITE:Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;->$VALUES:[Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;
    .locals 1

    const-class v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;
    .locals 1

    sget-object v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;->$VALUES:[Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

    return-object v0
.end method
