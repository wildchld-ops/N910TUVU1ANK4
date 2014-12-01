.class public final Landroid/dirEncryption/SDCardEncryptionPolicies;
.super Ljava/lang/Object;
.source "SDCardEncryptionPolicies.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/dirEncryption/SDCardEncryptionPolicies;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/dirEncryption/SDCardEncryptionPolicies;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mEnc:I

.field public mExcludeMedia:I

.field public mFullEnc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies$1;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies$1;-><init>()V

    sput-object v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->init()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iput p2, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iput p3, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 1

    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0, p0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static unflattenFromString(Ljava/lang/String;)Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 5

    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x3

    const/4 v2, 0x5

    const/4 v1, 0x7

    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    new-instance v4, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v4, v0, v2, v1}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    return-object v4

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/dirEncryption/SDCardEncryptionPolicies;Landroid/os/Parcel;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 4

    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget v2, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iget v3, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-direct {v0, v1, v2, v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->clone()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Landroid/dirEncryption/SDCardEncryptionPolicies;)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/dirEncryption/SDCardEncryptionPolicies;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-virtual {p0, p1}, Landroid/dirEncryption/SDCardEncryptionPolicies;->compareTo(Landroid/dirEncryption/SDCardEncryptionPolicies;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-object v1, v0

    iget v3, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget v4, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iget v4, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    iget v4, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public flattenToShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flattenToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultEnc()I
    .locals 1

    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    return v0
.end method

.method public getExcludeMedia()I
    .locals 1

    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    return v0
.end method

.method public getFullEnc()I
    .locals 1

    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v0, 0x5

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
