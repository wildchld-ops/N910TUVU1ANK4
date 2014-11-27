.class public Lcom/mobeam/barcodeService/service/impl/a;
.super Ljava/lang/Exception;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/mobeam/barcodeService/service/MobeamErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mobeam/barcodeService/service/impl/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobeam/barcodeService/service/impl/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V
    .locals 1

    sget-object v0, Lcom/mobeam/barcodeService/service/impl/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mobeam/barcodeService/service/impl/a;->b:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    return-void
.end method


# virtual methods
.method public final a()Lcom/mobeam/barcodeService/service/MobeamErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/a;->b:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    return-object v0
.end method
