.class public Lcom/sec/ims/client/notification/RcsDependency;
.super Ljava/lang/Object;
.source "RcsDependency.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/client/notification/RcsDependency;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mOriginId:I

.field private final mOriginType:Lcom/sec/ims/client/notification/RcsWidgetType;

.field private final mTargetId:I

.field private final mTargetType:Lcom/sec/ims/client/notification/RcsWidgetType;

.field private final mType:Lcom/sec/ims/client/notification/RcsDependencyType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/client/notification/RcsDependency$1;

    invoke-direct {v0}, Lcom/sec/ims/client/notification/RcsDependency$1;-><init>()V

    sput-object v0, Lcom/sec/ims/client/notification/RcsDependency;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/client/notification/RcsWidgetType;

    iput-object v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mOriginType:Lcom/sec/ims/client/notification/RcsWidgetType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mOriginId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/client/notification/RcsWidgetType;

    iput-object v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mTargetType:Lcom/sec/ims/client/notification/RcsWidgetType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mTargetId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/client/notification/RcsDependencyType;

    iput-object v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mType:Lcom/sec/ims/client/notification/RcsDependencyType;

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/client/notification/RcsWidgetType;ILcom/sec/ims/client/notification/RcsWidgetType;ILcom/sec/ims/client/notification/RcsDependencyType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/ims/client/notification/RcsDependency;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/client/notification/RcsWidgetType;

    iput-object v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mOriginType:Lcom/sec/ims/client/notification/RcsWidgetType;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/client/notification/RcsDependency;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mOriginId:I

    invoke-static {p3}, Lcom/sec/ims/client/notification/RcsDependency;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/client/notification/RcsWidgetType;

    iput-object v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mTargetType:Lcom/sec/ims/client/notification/RcsWidgetType;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/client/notification/RcsDependency;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mTargetId:I

    invoke-static {p5}, Lcom/sec/ims/client/notification/RcsDependency;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/client/notification/RcsDependencyType;

    iput-object v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mType:Lcom/sec/ims/client/notification/RcsDependencyType;

    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    return-object p0
.end method

.method public static make(Lcom/sec/ims/client/notification/RcsWidgetType;ILcom/sec/ims/client/notification/RcsWidgetType;ILcom/sec/ims/client/notification/RcsDependencyType;)Lcom/sec/ims/client/notification/RcsDependency;
    .locals 6

    new-instance v0, Lcom/sec/ims/client/notification/RcsDependency;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/ims/client/notification/RcsDependency;-><init>(Lcom/sec/ims/client/notification/RcsWidgetType;ILcom/sec/ims/client/notification/RcsWidgetType;ILcom/sec/ims/client/notification/RcsDependencyType;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOriginId()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mOriginId:I

    return v0
.end method

.method public getOriginType()Lcom/sec/ims/client/notification/RcsWidgetType;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mOriginType:Lcom/sec/ims/client/notification/RcsWidgetType;

    return-object v0
.end method

.method public getTargetId()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mTargetId:I

    return v0
.end method

.method public getTargetType()Lcom/sec/ims/client/notification/RcsWidgetType;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mTargetType:Lcom/sec/ims/client/notification/RcsWidgetType;

    return-object v0
.end method

.method public getType()Lcom/sec/ims/client/notification/RcsDependencyType;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mType:Lcom/sec/ims/client/notification/RcsDependencyType;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mOriginType:Lcom/sec/ims/client/notification/RcsWidgetType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mOriginId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mTargetType:Lcom/sec/ims/client/notification/RcsWidgetType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mTargetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsDependency;->mType:Lcom/sec/ims/client/notification/RcsDependencyType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
