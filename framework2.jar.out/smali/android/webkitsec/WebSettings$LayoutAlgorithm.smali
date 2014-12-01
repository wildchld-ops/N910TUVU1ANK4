.class public final enum Landroid/webkitsec/WebSettings$LayoutAlgorithm;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkitsec/WebSettings$LayoutAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkitsec/WebSettings$LayoutAlgorithm;

.field public static final enum NARROW_COLUMNS:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

.field public static final enum NORMAL:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

.field public static final enum SINGLE_COLUMN:Landroid/webkitsec/WebSettings$LayoutAlgorithm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum TEXT_AUTOSIZING:Landroid/webkitsec/WebSettings$LayoutAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    new-instance v0, Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    const-string v1, "SINGLE_COLUMN"

    invoke-direct {v0, v1, v3}, Landroid/webkitsec/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    new-instance v0, Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    const-string v1, "NARROW_COLUMNS"

    invoke-direct {v0, v1, v4}, Landroid/webkitsec/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    new-instance v0, Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    const-string v1, "TEXT_AUTOSIZING"

    invoke-direct {v0, v1, v5}, Landroid/webkitsec/WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    sget-object v1, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    aput-object v1, v0, v5

    sput-object v0, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->$VALUES:[Landroid/webkitsec/WebSettings$LayoutAlgorithm;

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

.method public static valueOf(Ljava/lang/String;)Landroid/webkitsec/WebSettings$LayoutAlgorithm;
    .locals 1

    const-class v0, Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    return-object v0
.end method

.method public static values()[Landroid/webkitsec/WebSettings$LayoutAlgorithm;
    .locals 1

    sget-object v0, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->$VALUES:[Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    return-object v0
.end method
