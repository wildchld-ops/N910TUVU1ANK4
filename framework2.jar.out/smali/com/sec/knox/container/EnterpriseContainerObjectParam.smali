.class public Lcom/sec/knox/container/EnterpriseContainerObjectParam;
.super Ljava/lang/Object;
.source "EnterpriseContainerObjectParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/knox/container/EnterpriseContainerObjectParam;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "EnterpriseContainerObjectParam"


# instance fields
.field private mAdmin:I

.field private mApkInstallPath:Ljava/lang/String;

.field private mContainerCreationRequestId:I

.field private mEmail:Ljava/lang/String;

.field private mLockType:I

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mSecurityIcon:Landroid/graphics/Bitmap;

.field private mSecurityText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;

    invoke-direct {v0}, Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;-><init>()V

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdmin()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    return v0
.end method

.method public getApkInstallPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getLockType()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    return v0
.end method

.method public getSecurityIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSecurityText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    return-object v0
.end method

.method public setAdmin(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    return-void
.end method

.method public setApkInstallPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    return-void
.end method

.method public setLockType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    return-void
.end method

.method public setSecurityIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSecurityText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "EnterpriseContainerObjectParam"

    const-string/jumbo v1, "writeToParcel Password null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "EnterpriseContainerObjectParam"

    const-string/jumbo v1, "writeToParcel Password null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "EnterpriseContainerObjectParam"

    const-string/jumbo v1, "writeToParcel Email null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "EnterpriseContainerObjectParam"

    const-string/jumbo v1, "writeToParcel Security Text null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "EnterpriseContainerObjectParam"

    const-string/jumbo v1, "writeToParcel mApkInstallPath null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
