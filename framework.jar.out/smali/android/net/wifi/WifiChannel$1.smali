.class final Landroid/net/wifi/WifiChannel$1;
.super Ljava/lang/Object;
.source "WifiChannel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiChannel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiChannel;
    .locals 2

    new-instance v0, Landroid/net/wifi/WifiChannel;

    invoke-direct {v0}, Landroid/net/wifi/WifiChannel;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiChannel;->channel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiChannel;->frequency:I

    # invokes: Landroid/net/wifi/WifiChannel;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiChannel;->access$000(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiChannel;->mode:Ljava/util/BitSet;

    # invokes: Landroid/net/wifi/WifiChannel;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiChannel;->access$000(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiChannel;->flags:Ljava/util/BitSet;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiChannel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiChannel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiChannel;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/WifiChannel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiChannel$1;->newArray(I)[Landroid/net/wifi/WifiChannel;

    move-result-object v0

    return-object v0
.end method
