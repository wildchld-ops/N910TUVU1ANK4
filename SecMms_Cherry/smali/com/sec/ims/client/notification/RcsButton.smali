.class public Lcom/sec/ims/client/notification/RcsButton;
.super Ljava/lang/Object;
.source "RcsButton.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/client/notification/RcsButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mKey:I

.field private final mLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/client/notification/RcsButton$1;

    invoke-direct {v0}, Lcom/sec/ims/client/notification/RcsButton$1;-><init>()V

    sput-object v0, Lcom/sec/ims/client/notification/RcsButton;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/client/notification/RcsButton;->mLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/client/notification/RcsButton;->mKey:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/ims/client/notification/RcsButton;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/client/notification/RcsButton;->mLabel:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/ims/client/notification/RcsButton;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/client/notification/RcsButton;->mKey:I

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

.method public static make(Ljava/lang/String;Ljava/lang/Integer;)Lcom/sec/ims/client/notification/RcsButton;
    .locals 1

    new-instance v0, Lcom/sec/ims/client/notification/RcsButton;

    invoke-direct {v0, p0, p1}, Lcom/sec/ims/client/notification/RcsButton;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/sec/ims/client/notification/RcsButton;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/ims/client/notification/RcsButton;

    iget-object v2, p0, Lcom/sec/ims/client/notification/RcsButton;->mLabel:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/ims/client/notification/RcsButton;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/ims/client/notification/RcsButton;->mKey:I

    iget v3, v0, Lcom/sec/ims/client/notification/RcsButton;->mKey:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getKey()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/sec/ims/client/notification/RcsButton;->mKey:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsButton;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsButton;->mLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/sec/ims/client/notification/RcsButton;->mKey:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "RcsButton Key: %s Value: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/ims/client/notification/RcsButton;->mKey:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/ims/client/notification/RcsButton;->mLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsButton;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/client/notification/RcsButton;->mKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
