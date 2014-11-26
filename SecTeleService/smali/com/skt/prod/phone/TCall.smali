.class public Lcom/skt/prod/phone/TCall;
.super Ljava/lang/Object;
.source "TCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/skt/prod/phone/TCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Ljava/lang/String;

.field public callType:I

.field public callerCount:I

.field public connectTime:J

.field public creatTime:J

.field public disconnectCasueMessage:Ljava/lang/String;

.field public disconnectCause:I

.field public isInComing:Z

.field public lettering:Ljava/lang/String;

.field public numberPresentation:I

.field public state:I

.field public supportVideoCall:Z

.field public virtualAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/skt/prod/phone/TCall$1;

    invoke-direct {v0}, Lcom/skt/prod/phone/TCall$1;-><init>()V

    sput-object v0, Lcom/skt/prod/phone/TCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/skt/prod/phone/TCall;->callerCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skt/prod/phone/TCall;->supportVideoCall:Z

    return-void
.end method

.method static synthetic access$000(Lcom/skt/prod/phone/TCall;Landroid/os/Parcel;)V
    .locals 0
    .param p0    # Lcom/skt/prod/phone/TCall;
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0, p1}, Lcom/skt/prod/phone/TCall;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain()Lcom/skt/prod/phone/TCall;
    .locals 1

    new-instance v0, Lcom/skt/prod/phone/TCall;

    invoke-direct {v0}, Lcom/skt/prod/phone/TCall;-><init>()V

    return-object v0
.end method

.method private final readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1    # Landroid/os/Parcel;

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/skt/prod/phone/TCall;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/skt/prod/phone/TCall;->address:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/skt/prod/phone/TCall;->lettering:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/skt/prod/phone/TCall;->virtualAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/skt/prod/phone/TCall;->numberPresentation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/skt/prod/phone/TCall;->isInComing:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/skt/prod/phone/TCall;->disconnectCause:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/skt/prod/phone/TCall;->disconnectCasueMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/skt/prod/phone/TCall;->creatTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/skt/prod/phone/TCall;->connectTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/skt/prod/phone/TCall;->callType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/skt/prod/phone/TCall;->callerCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/skt/prod/phone/TCall;->supportVideoCall:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/skt/prod/phone/TCall;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/skt/prod/phone/TCall;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skt/prod/phone/TCall;->lettering:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skt/prod/phone/TCall;->virtualAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/skt/prod/phone/TCall;->numberPresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/skt/prod/phone/TCall;->isInComing:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/skt/prod/phone/TCall;->disconnectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/skt/prod/phone/TCall;->disconnectCasueMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/skt/prod/phone/TCall;->creatTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Lcom/skt/prod/phone/TCall;->connectTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/skt/prod/phone/TCall;->callType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/skt/prod/phone/TCall;->callerCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/skt/prod/phone/TCall;->supportVideoCall:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
