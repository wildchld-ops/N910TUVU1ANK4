.class public Lcom/sec/android/allshare/dmrservice/DeviceList;
.super Ljava/lang/Object;
.source "DeviceList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/dmrservice/DeviceList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private devList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/allshare/dmrservice/Device;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/allshare/dmrservice/DeviceList$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/dmrservice/DeviceList$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/dmrservice/DeviceList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/allshare/dmrservice/DeviceList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/dmrservice/DeviceList;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/allshare/dmrservice/Device;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    sget-object v1, Lcom/sec/android/allshare/dmrservice/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
