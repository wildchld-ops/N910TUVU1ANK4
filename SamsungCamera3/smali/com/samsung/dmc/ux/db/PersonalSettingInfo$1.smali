.class Lcom/samsung/dmc/ux/db/PersonalSettingInfo$1;
.super Ljava/lang/Object;
.source "PersonalSettingInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
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
        "Lcom/samsung/dmc/ux/db/PersonalSettingInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    .locals 2

    new-instance v0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    .locals 1

    new-array v0, p1, [Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo$1;->newArray(I)[Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    return-object v0
.end method
