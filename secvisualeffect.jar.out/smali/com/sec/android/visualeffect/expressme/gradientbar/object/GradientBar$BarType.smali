.class public final enum Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;
.super Ljava/lang/Enum;
.source "GradientBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BarType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

.field public static final enum ONE:Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

.field public static final enum THREE:Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

.field public static final enum TWO:Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    const-string v1, "ONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;->ONE:Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    new-instance v0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    const-string v1, "TWO"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;->TWO:Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    new-instance v0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    const-string v1, "THREE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;->THREE:Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    sget-object v1, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;->ONE:Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;->TWO:Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;->THREE:Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;->$VALUES:[Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;
    .locals 1

    sget-object v0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;->$VALUES:[Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    return-object v0
.end method
