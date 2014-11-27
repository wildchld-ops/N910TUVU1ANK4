.class final enum Lcom/mobeam/barcodeService/service/impl/k;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/mobeam/barcodeService/service/impl/k;

.field public static final enum b:Lcom/mobeam/barcodeService/service/impl/k;

.field private static final synthetic c:[Lcom/mobeam/barcodeService/service/impl/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mobeam/barcodeService/service/impl/k;

    const-string v1, "Service"

    invoke-direct {v0, v1, v2}, Lcom/mobeam/barcodeService/service/impl/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/impl/k;->a:Lcom/mobeam/barcodeService/service/impl/k;

    new-instance v0, Lcom/mobeam/barcodeService/service/impl/k;

    const-string v1, "Wrapper"

    invoke-direct {v0, v1, v3}, Lcom/mobeam/barcodeService/service/impl/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/service/impl/k;->b:Lcom/mobeam/barcodeService/service/impl/k;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mobeam/barcodeService/service/impl/k;

    sget-object v1, Lcom/mobeam/barcodeService/service/impl/k;->a:Lcom/mobeam/barcodeService/service/impl/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mobeam/barcodeService/service/impl/k;->b:Lcom/mobeam/barcodeService/service/impl/k;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mobeam/barcodeService/service/impl/k;->c:[Lcom/mobeam/barcodeService/service/impl/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobeam/barcodeService/service/impl/k;
    .locals 1

    const-class v0, Lcom/mobeam/barcodeService/service/impl/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobeam/barcodeService/service/impl/k;

    return-object v0
.end method

.method public static values()[Lcom/mobeam/barcodeService/service/impl/k;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mobeam/barcodeService/service/impl/k;->c:[Lcom/mobeam/barcodeService/service/impl/k;

    array-length v1, v0

    new-array v2, v1, [Lcom/mobeam/barcodeService/service/impl/k;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
