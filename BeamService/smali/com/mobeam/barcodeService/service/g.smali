.class final Lcom/mobeam/barcodeService/service/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->a(Landroid/os/Parcel;)Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    return-object v0
.end method
