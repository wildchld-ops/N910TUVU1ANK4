.class Lcom/samsung/dmc/ux/db/ProcessInfo$1;
.super Ljava/lang/Object;
.source "ProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmc/ux/db/ProcessInfo;
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
        "Lcom/samsung/dmc/ux/db/ProcessInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/dmc/ux/db/ProcessInfo;
    .locals 3

    new-instance v0, Lcom/samsung/dmc/ux/db/ProcessInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setTaskID(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setTotalPercent(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->RECV_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setTaskType(Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setStrFileName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setStrIPAddress(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setStrMacAddress(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setStrOtherUserName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/ProcessInfo;->setCompleteTime(Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/dmc/ux/db/ProcessInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/dmc/ux/db/ProcessInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/dmc/ux/db/ProcessInfo;
    .locals 1

    new-array v0, p1, [Lcom/samsung/dmc/ux/db/ProcessInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/dmc/ux/db/ProcessInfo$1;->newArray(I)[Lcom/samsung/dmc/ux/db/ProcessInfo;

    move-result-object v0

    return-object v0
.end method
