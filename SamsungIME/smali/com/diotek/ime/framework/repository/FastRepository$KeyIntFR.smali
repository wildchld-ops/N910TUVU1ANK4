.class public final enum Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;
.super Ljava/lang/Enum;
.source "FastRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/repository/FastRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyIntFR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

.field public static final enum KEY_INT_FR_TEST_1:Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

.field public static final enum KEY_INT_FR_TEST_2:Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

    const-string v1, "KEY_INT_FR_TEST_1"

    invoke-direct {v0, v1, v2, v2}, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;->KEY_INT_FR_TEST_1:Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

    new-instance v0, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

    const-string v1, "KEY_INT_FR_TEST_2"

    invoke-direct {v0, v1, v3, v3}, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;->KEY_INT_FR_TEST_2:Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

    sget-object v1, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;->KEY_INT_FR_TEST_1:Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

    aput-object v1, v0, v2

    sget-object v1, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;->KEY_INT_FR_TEST_2:Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

    aput-object v1, v0, v3

    sput-object v0, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;->$VALUES:[Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;
    .locals 1

    const-class v0, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

    return-object v0
.end method

.method public static values()[Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;->$VALUES:[Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;->index:I

    return v0
.end method
