.class public final enum Landroid/view/animation/SmgAnimation$Ratio;
.super Ljava/lang/Enum;
.source "SmgAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/SmgAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ratio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/animation/SmgAnimation$Ratio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/animation/SmgAnimation$Ratio;

.field public static final enum Height:Landroid/view/animation/SmgAnimation$Ratio;

.field public static final enum Width:Landroid/view/animation/SmgAnimation$Ratio;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/SmgAnimation$Ratio;

    const-string v1, "Width"

    invoke-direct {v0, v1, v2}, Landroid/view/animation/SmgAnimation$Ratio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    new-instance v0, Landroid/view/animation/SmgAnimation$Ratio;

    const-string v1, "Height"

    invoke-direct {v0, v1, v3}, Landroid/view/animation/SmgAnimation$Ratio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/animation/SmgAnimation$Ratio;

    sget-object v1, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    aput-object v1, v0, v3

    sput-object v0, Landroid/view/animation/SmgAnimation$Ratio;->$VALUES:[Landroid/view/animation/SmgAnimation$Ratio;

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

.method public static valueOf(Ljava/lang/String;)Landroid/view/animation/SmgAnimation$Ratio;
    .locals 1

    const-class v0, Landroid/view/animation/SmgAnimation$Ratio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/animation/SmgAnimation$Ratio;

    return-object v0
.end method

.method public static values()[Landroid/view/animation/SmgAnimation$Ratio;
    .locals 1

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->$VALUES:[Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/animation/SmgAnimation$Ratio;

    return-object v0
.end method
