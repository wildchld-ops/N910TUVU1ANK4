.class Lcom/sec/ims/client/notification/RcsDependency$1;
.super Ljava/lang/Object;
.source "RcsDependency.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/client/notification/RcsDependency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/ims/client/notification/RcsDependency;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/client/notification/RcsDependency;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    new-instance v0, Lcom/sec/ims/client/notification/RcsDependency;

    invoke-direct {v0, p1}, Lcom/sec/ims/client/notification/RcsDependency;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/ims/client/notification/RcsDependency$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/client/notification/RcsDependency;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/ims/client/notification/RcsDependency;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Lcom/sec/ims/client/notification/RcsDependency;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/ims/client/notification/RcsDependency$1;->newArray(I)[Lcom/sec/ims/client/notification/RcsDependency;

    move-result-object v0

    return-object v0
.end method
