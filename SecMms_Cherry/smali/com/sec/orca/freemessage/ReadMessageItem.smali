.class public Lcom/sec/orca/freemessage/ReadMessageItem;
.super Ljava/lang/Object;
.source "ReadMessageItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/orca/freemessage/ReadMessageItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public msgId:J

.field public msgType:I

.field public senderMsisdn:Ljava/lang/String;

.field public sentTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/orca/freemessage/ReadMessageItem$1;

    invoke-direct {v0}, Lcom/sec/orca/freemessage/ReadMessageItem$1;-><init>()V

    sput-object v0, Lcom/sec/orca/freemessage/ReadMessageItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/orca/freemessage/ReadMessageItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # J
    .param p6    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/orca/freemessage/ReadMessageItem;->senderMsisdn:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/orca/freemessage/ReadMessageItem;->msgId:J

    iput-wide p4, p0, Lcom/sec/orca/freemessage/ReadMessageItem;->sentTime:J

    iput p6, p0, Lcom/sec/orca/freemessage/ReadMessageItem;->msgType:I

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/orca/freemessage/ReadMessageItem;->senderMsisdn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/orca/freemessage/ReadMessageItem;->msgId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/orca/freemessage/ReadMessageItem;->sentTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/orca/freemessage/ReadMessageItem;->msgType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v0, p0, Lcom/sec/orca/freemessage/ReadMessageItem;->senderMsisdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/orca/freemessage/ReadMessageItem;->msgId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sec/orca/freemessage/ReadMessageItem;->sentTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/sec/orca/freemessage/ReadMessageItem;->msgType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
