.class public Lcom/samsung/dmc/ux/db/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/dmc/ux/db/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERCENT_COMPLETED:I = 0x65


# instance fields
.field private completeTime:Ljava/lang/String;

.field private nTaskID:J

.field private nTotalPercent:J

.field private strFileName:Ljava/lang/String;

.field private strIPAddress:Ljava/lang/String;

.field private strMacAddress:Ljava/lang/String;

.field private strOtherUserName:Ljava/lang/String;

.field private taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/dmc/ux/db/ProcessInfo$1;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    iput-wide v3, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    sget-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    iput-wide v1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    iput-wide v3, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    sget-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strFileName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strIPAddress:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strMacAddress:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strOtherUserName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->completeTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    sget-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->RECV_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    :goto_0
    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strFileName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strIPAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strMacAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strOtherUserName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->completeTime:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/samsung/dmc/ux/db/ProcessInfo;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/dmc/ux/db/ProcessInfo;

    iget-wide v2, v0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    iget-wide v4, v0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->getTaskType()Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCompleteTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->completeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStrFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getStrIPAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strIPAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStrMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStrOtherUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strOtherUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskID()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    return-wide v0
.end method

.method public getTaskType()Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    return-object v0
.end method

.method public getTotalPercent()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->isSendTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isCompleted()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    const-wide/16 v2, 0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendTask()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    sget-object v1, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCompleteTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->completeTime:Ljava/lang/String;

    return-void
.end method

.method public setCompleted()V
    .locals 2

    const-wide/16 v0, 0x65

    iput-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    return-void
.end method

.method public setStrFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strFileName:Ljava/lang/String;

    return-void
.end method

.method public setStrIPAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strIPAddress:Ljava/lang/String;

    return-void
.end method

.method public setStrMacAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strMacAddress:Ljava/lang/String;

    return-void
.end method

.method public setStrOtherUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strOtherUserName:Ljava/lang/String;

    return-void
.end method

.method public setTaskID(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    return-void
.end method

.method public setTaskType(Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    return-void
.end method

.method public setTotalPercent(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTaskID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->nTotalPercent:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->taskType:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    sget-object v1, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->RECV_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strIPAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->strOtherUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/ProcessInfo;->completeTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
