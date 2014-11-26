.class public Lcom/sec/enterprise/knox/EnterpriseContainerObject;
.super Ljava/lang/Object;
.source "EnterpriseContainerObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/sec/knox/container/EnterpriseContainerConstants;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private admin:I

.field private containerType:I

.field private email:Ljava/lang/String;

.field private id:I

.field private lockType:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/enterprise/knox/EnterpriseContainerObject$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerObject$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    iput-object v2, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    iput v1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    iput v1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1    # Landroid/os/Parcel;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    iput-object v2, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    iput v1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    iput v1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContainerAdmin()I
    .locals 1

    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    return v0
.end method

.method public getContainerEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerId()I
    .locals 1

    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    return v0
.end method

.method public getContainerLockType()I
    .locals 1

    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    return v0
.end method

.method public getContainerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerType()I
    .locals 1

    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    return v0
.end method

.method public setContainerAdmin(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    return-void
.end method

.method public setContainerEmail(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    return-void
.end method

.method public setContainerId(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    return-void
.end method

.method public setContainerLockType(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    return-void
.end method

.method public setContainerName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    return-void
.end method

.method public setContainerType(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method
