.class public final enum Lcom/mobeam/barcodeService/a/a/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/mobeam/barcodeService/a/a/d;

.field public static final enum b:Lcom/mobeam/barcodeService/a/a/d;

.field public static final enum c:Lcom/mobeam/barcodeService/a/a/d;

.field public static final enum d:Lcom/mobeam/barcodeService/a/a/d;

.field private static synthetic e:[I

.field private static final synthetic f:[Lcom/mobeam/barcodeService/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mobeam/barcodeService/a/a/d;

    const-string v1, "UNAUTHORIZED"

    invoke-direct {v0, v1, v2}, Lcom/mobeam/barcodeService/a/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/a/a/d;->a:Lcom/mobeam/barcodeService/a/a/d;

    new-instance v0, Lcom/mobeam/barcodeService/a/a/d;

    const-string v1, "AUTHORIZED"

    invoke-direct {v0, v1, v3}, Lcom/mobeam/barcodeService/a/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/a/a/d;->b:Lcom/mobeam/barcodeService/a/a/d;

    new-instance v0, Lcom/mobeam/barcodeService/a/a/d;

    const-string v1, "REVOKED"

    invoke-direct {v0, v1, v4}, Lcom/mobeam/barcodeService/a/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/a/a/d;->c:Lcom/mobeam/barcodeService/a/a/d;

    new-instance v0, Lcom/mobeam/barcodeService/a/a/d;

    const-string v1, "REQUESTED"

    invoke-direct {v0, v1, v5}, Lcom/mobeam/barcodeService/a/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/barcodeService/a/a/d;->d:Lcom/mobeam/barcodeService/a/a/d;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mobeam/barcodeService/a/a/d;

    sget-object v1, Lcom/mobeam/barcodeService/a/a/d;->a:Lcom/mobeam/barcodeService/a/a/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mobeam/barcodeService/a/a/d;->b:Lcom/mobeam/barcodeService/a/a/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mobeam/barcodeService/a/a/d;->c:Lcom/mobeam/barcodeService/a/a/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mobeam/barcodeService/a/a/d;->d:Lcom/mobeam/barcodeService/a/a/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mobeam/barcodeService/a/a/d;->f:[Lcom/mobeam/barcodeService/a/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/mobeam/barcodeService/a/a/d;
    .locals 1

    invoke-static {}, Lcom/mobeam/barcodeService/a/a/d;->values()[Lcom/mobeam/barcodeService/a/a/d;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static a(Lcom/mobeam/mbss/service/AppStatus;)Lcom/mobeam/barcodeService/a/a/d;
    .locals 2

    invoke-static {}, Lcom/mobeam/barcodeService/a/a/d;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/mobeam/barcodeService/a/a/d;->a:Lcom/mobeam/barcodeService/a/a/d;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/mobeam/barcodeService/a/a/d;->b:Lcom/mobeam/barcodeService/a/a/d;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/mobeam/barcodeService/a/a/d;->c:Lcom/mobeam/barcodeService/a/a/d;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/mobeam/barcodeService/a/a/d;->d:Lcom/mobeam/barcodeService/a/a/d;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/mobeam/barcodeService/a/a/d;->e:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mobeam/mbss/service/AppStatus;->values()[Lcom/mobeam/mbss/service/AppStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mobeam/mbss/service/AppStatus;->AUTHORIZED:Lcom/mobeam/mbss/service/AppStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mobeam/mbss/service/AppStatus;->REQUESTED:Lcom/mobeam/mbss/service/AppStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mobeam/mbss/service/AppStatus;->REVOKED:Lcom/mobeam/mbss/service/AppStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/mobeam/mbss/service/AppStatus;->UNAUTHORIZED:Lcom/mobeam/mbss/service/AppStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/mobeam/barcodeService/a/a/d;->e:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobeam/barcodeService/a/a/d;
    .locals 1

    const-class v0, Lcom/mobeam/barcodeService/a/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobeam/barcodeService/a/a/d;

    return-object v0
.end method

.method public static values()[Lcom/mobeam/barcodeService/a/a/d;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mobeam/barcodeService/a/a/d;->f:[Lcom/mobeam/barcodeService/a/a/d;

    array-length v1, v0

    new-array v2, v1, [Lcom/mobeam/barcodeService/a/a/d;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
