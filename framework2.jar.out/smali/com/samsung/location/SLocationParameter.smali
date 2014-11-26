.class public Lcom/samsung/location/SLocationParameter;
.super Ljava/lang/Object;
.source "SLocationParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/location/SLocationParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBssid:Ljava/lang/String;

.field public mLat:D

.field public mLon:D

.field public mRadius:I

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/location/SLocationParameter$1;

    invoke-direct {v0}, Lcom/samsung/location/SLocationParameter$1;-><init>()V

    sput-object v0, Lcom/samsung/location/SLocationParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IDDI)V
    .locals 1
    .param p1    # I
    .param p2    # D
    .param p4    # D
    .param p6    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/location/SLocationParameter;->mType:I

    iput-wide p2, p0, Lcom/samsung/location/SLocationParameter;->mLat:D

    iput-wide p4, p0, Lcom/samsung/location/SLocationParameter;->mLon:D

    iput p6, p0, Lcom/samsung/location/SLocationParameter;->mRadius:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/location/SLocationParameter;->mBssid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/location/SLocationParameter;->mType:I

    iput-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLat:D

    iput-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLon:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/location/SLocationParameter;->mRadius:I

    iput-object p2, p0, Lcom/samsung/location/SLocationParameter;->mBssid:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/location/SLocationParameter;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLat:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLon:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/location/SLocationParameter;->mRadius:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/location/SLocationParameter;->mBssid:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/location/SLocationParameter$1;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # Lcom/samsung/location/SLocationParameter$1;

    invoke-direct {p0, p1}, Lcom/samsung/location/SLocationParameter;-><init>(Landroid/os/Parcel;)V

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

    iget v0, p0, Lcom/samsung/location/SLocationParameter;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLon:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/samsung/location/SLocationParameter;->mRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/location/SLocationParameter;->mBssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
