.class public final enum Lcom/mobeam/barcodeService/a/a/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/mobeam/barcodeService/a/a/c;

.field public static final enum b:Lcom/mobeam/barcodeService/a/a/c;

.field public static final enum c:Lcom/mobeam/barcodeService/a/a/c;

.field public static final enum d:Lcom/mobeam/barcodeService/a/a/c;

.field public static final enum e:Lcom/mobeam/barcodeService/a/a/c;

.field private static final synthetic g:[Lcom/mobeam/barcodeService/a/a/c;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mobeam/barcodeService/a/a/c;

    const-string v1, "UNAUTHORIZED"

    invoke-direct {v0, v1, v2, v2}, Lcom/mobeam/barcodeService/a/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mobeam/barcodeService/a/a/c;->a:Lcom/mobeam/barcodeService/a/a/c;

    new-instance v0, Lcom/mobeam/barcodeService/a/a/c;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3, v3}, Lcom/mobeam/barcodeService/a/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mobeam/barcodeService/a/a/c;->b:Lcom/mobeam/barcodeService/a/a/c;

    new-instance v0, Lcom/mobeam/barcodeService/a/a/c;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v4, v4}, Lcom/mobeam/barcodeService/a/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mobeam/barcodeService/a/a/c;->c:Lcom/mobeam/barcodeService/a/a/c;

    new-instance v0, Lcom/mobeam/barcodeService/a/a/c;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v5, v5}, Lcom/mobeam/barcodeService/a/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mobeam/barcodeService/a/a/c;->d:Lcom/mobeam/barcodeService/a/a/c;

    new-instance v0, Lcom/mobeam/barcodeService/a/a/c;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v6, v6}, Lcom/mobeam/barcodeService/a/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mobeam/barcodeService/a/a/c;->e:Lcom/mobeam/barcodeService/a/a/c;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mobeam/barcodeService/a/a/c;

    sget-object v1, Lcom/mobeam/barcodeService/a/a/c;->a:Lcom/mobeam/barcodeService/a/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mobeam/barcodeService/a/a/c;->b:Lcom/mobeam/barcodeService/a/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mobeam/barcodeService/a/a/c;->c:Lcom/mobeam/barcodeService/a/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mobeam/barcodeService/a/a/c;->d:Lcom/mobeam/barcodeService/a/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mobeam/barcodeService/a/a/c;->e:Lcom/mobeam/barcodeService/a/a/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mobeam/barcodeService/a/a/c;->g:[Lcom/mobeam/barcodeService/a/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/mobeam/barcodeService/a/a/c;->f:I

    return-void
.end method

.method public static a(I)Lcom/mobeam/barcodeService/a/a/c;
    .locals 1

    invoke-static {}, Lcom/mobeam/barcodeService/a/a/c;->values()[Lcom/mobeam/barcodeService/a/a/c;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobeam/barcodeService/a/a/c;
    .locals 1

    const-class v0, Lcom/mobeam/barcodeService/a/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobeam/barcodeService/a/a/c;

    return-object v0
.end method

.method public static values()[Lcom/mobeam/barcodeService/a/a/c;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mobeam/barcodeService/a/a/c;->g:[Lcom/mobeam/barcodeService/a/a/c;

    array-length v1, v0

    new-array v2, v1, [Lcom/mobeam/barcodeService/a/a/c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/mobeam/barcodeService/a/a/c;->f:I

    return v0
.end method
