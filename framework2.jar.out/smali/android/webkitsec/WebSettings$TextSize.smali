.class public final enum Landroid/webkitsec/WebSettings$TextSize;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkitsec/WebSettings$TextSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkitsec/WebSettings$TextSize;

.field public static final enum LARGER:Landroid/webkitsec/WebSettings$TextSize;

.field public static final enum LARGEST:Landroid/webkitsec/WebSettings$TextSize;

.field public static final enum NORMAL:Landroid/webkitsec/WebSettings$TextSize;

.field public static final enum SMALLER:Landroid/webkitsec/WebSettings$TextSize;

.field public static final enum SMALLEST:Landroid/webkitsec/WebSettings$TextSize;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/webkitsec/WebSettings$TextSize;

    const-string v1, "SMALLEST"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v3, v2}, Landroid/webkitsec/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkitsec/WebSettings$TextSize;->SMALLEST:Landroid/webkitsec/WebSettings$TextSize;

    new-instance v0, Landroid/webkitsec/WebSettings$TextSize;

    const-string v1, "SMALLER"

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v4, v2}, Landroid/webkitsec/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkitsec/WebSettings$TextSize;->SMALLER:Landroid/webkitsec/WebSettings$TextSize;

    new-instance v0, Landroid/webkitsec/WebSettings$TextSize;

    const-string v1, "NORMAL"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v5, v2}, Landroid/webkitsec/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkitsec/WebSettings$TextSize;->NORMAL:Landroid/webkitsec/WebSettings$TextSize;

    new-instance v0, Landroid/webkitsec/WebSettings$TextSize;

    const-string v1, "LARGER"

    const/16 v2, 0x96

    invoke-direct {v0, v1, v6, v2}, Landroid/webkitsec/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkitsec/WebSettings$TextSize;->LARGER:Landroid/webkitsec/WebSettings$TextSize;

    new-instance v0, Landroid/webkitsec/WebSettings$TextSize;

    const-string v1, "LARGEST"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v7, v2}, Landroid/webkitsec/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/webkitsec/WebSettings$TextSize;->LARGEST:Landroid/webkitsec/WebSettings$TextSize;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/webkitsec/WebSettings$TextSize;

    sget-object v1, Landroid/webkitsec/WebSettings$TextSize;->SMALLEST:Landroid/webkitsec/WebSettings$TextSize;

    aput-object v1, v0, v3

    sget-object v1, Landroid/webkitsec/WebSettings$TextSize;->SMALLER:Landroid/webkitsec/WebSettings$TextSize;

    aput-object v1, v0, v4

    sget-object v1, Landroid/webkitsec/WebSettings$TextSize;->NORMAL:Landroid/webkitsec/WebSettings$TextSize;

    aput-object v1, v0, v5

    sget-object v1, Landroid/webkitsec/WebSettings$TextSize;->LARGER:Landroid/webkitsec/WebSettings$TextSize;

    aput-object v1, v0, v6

    sget-object v1, Landroid/webkitsec/WebSettings$TextSize;->LARGEST:Landroid/webkitsec/WebSettings$TextSize;

    aput-object v1, v0, v7

    sput-object v0, Landroid/webkitsec/WebSettings$TextSize;->$VALUES:[Landroid/webkitsec/WebSettings$TextSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/webkitsec/WebSettings$TextSize;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkitsec/WebSettings$TextSize;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Landroid/webkitsec/WebSettings$TextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/WebSettings$TextSize;

    return-object v0
.end method

.method public static values()[Landroid/webkitsec/WebSettings$TextSize;
    .locals 1

    sget-object v0, Landroid/webkitsec/WebSettings$TextSize;->$VALUES:[Landroid/webkitsec/WebSettings$TextSize;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkitsec/WebSettings$TextSize;

    return-object v0
.end method
