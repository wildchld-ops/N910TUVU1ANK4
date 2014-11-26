.class Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem$1;
.super Ljava/lang/Object;
.source "IpNumberDelete.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;
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
        "Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem$1;->this$1:Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;
    .locals 2
    .param p1    # Landroid/os/Parcel;

    new-instance v0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem$1;->this$1:Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;-><init>(Lcom/android/phone/callsettings/IpNumberDelete;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->number:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->access$102(Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem$1;->newArray(I)[Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    move-result-object v0

    return-object v0
.end method
