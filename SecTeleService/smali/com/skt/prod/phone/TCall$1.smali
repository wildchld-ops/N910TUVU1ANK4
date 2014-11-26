.class final Lcom/skt/prod/phone/TCall$1;
.super Ljava/lang/Object;
.source "TCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skt/prod/phone/TCall;
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
        "Lcom/skt/prod/phone/TCall;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/skt/prod/phone/TCall;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-static {}, Lcom/skt/prod/phone/TCall;->obtain()Lcom/skt/prod/phone/TCall;

    move-result-object v0

    # invokes: Lcom/skt/prod/phone/TCall;->readFromParcel(Landroid/os/Parcel;)V
    invoke-static {v0, p1}, Lcom/skt/prod/phone/TCall;->access$000(Lcom/skt/prod/phone/TCall;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Lcom/skt/prod/phone/TCall$1;->createFromParcel(Landroid/os/Parcel;)Lcom/skt/prod/phone/TCall;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/skt/prod/phone/TCall;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Lcom/skt/prod/phone/TCall;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/skt/prod/phone/TCall$1;->newArray(I)[Lcom/skt/prod/phone/TCall;

    move-result-object v0

    return-object v0
.end method
