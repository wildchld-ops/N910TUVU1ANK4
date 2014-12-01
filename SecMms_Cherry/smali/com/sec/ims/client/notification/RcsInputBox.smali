.class public Lcom/sec/ims/client/notification/RcsInputBox;
.super Ljava/lang/Object;
.source "RcsInputBox.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/client/notification/RcsInputBox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mKey:I

.field private final mLabel:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private final mType:Lcom/sec/ims/client/notification/RcsInputBoxType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/client/notification/RcsInputBox$1;

    invoke-direct {v0}, Lcom/sec/ims/client/notification/RcsInputBox$1;-><init>()V

    sput-object v0, Lcom/sec/ims/client/notification/RcsInputBox;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mKey:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/client/notification/RcsInputBoxType;

    iput-object v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mType:Lcom/sec/ims/client/notification/RcsInputBoxType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/sec/ims/client/notification/RcsInputBoxType;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/sec/ims/client/notification/RcsInputBox;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/ims/client/notification/RcsInputBox;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mKey:I

    invoke-static {p3}, Lcom/sec/ims/client/notification/RcsInputBox;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/client/notification/RcsInputBoxType;

    iput-object v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mType:Lcom/sec/ims/client/notification/RcsInputBoxType;

    invoke-static {p4}, Lcom/sec/ims/client/notification/RcsInputBox;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mText:Ljava/lang/String;

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

.method public static make(Ljava/lang/String;Ljava/lang/Integer;Lcom/sec/ims/client/notification/RcsInputBoxType;)Lcom/sec/ims/client/notification/RcsInputBox;
    .locals 2

    new-instance v0, Lcom/sec/ims/client/notification/RcsInputBox;

    const-string v1, ""

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/sec/ims/client/notification/RcsInputBox;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/sec/ims/client/notification/RcsInputBoxType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static make(Ljava/lang/String;Ljava/lang/Integer;Lcom/sec/ims/client/notification/RcsInputBoxType;Ljava/lang/String;)Lcom/sec/ims/client/notification/RcsInputBox;
    .locals 1

    new-instance v0, Lcom/sec/ims/client/notification/RcsInputBox;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/sec/ims/client/notification/RcsInputBox;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/sec/ims/client/notification/RcsInputBoxType;Ljava/lang/String;)V

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

    instance-of v2, p1, Lcom/sec/ims/client/notification/RcsInputBox;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/ims/client/notification/RcsInputBox;

    iget-object v2, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mLabel:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/ims/client/notification/RcsInputBox;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mKey:I

    iget v3, v0, Lcom/sec/ims/client/notification/RcsInputBox;->mKey:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mType:Lcom/sec/ims/client/notification/RcsInputBoxType;

    iget-object v3, v0, Lcom/sec/ims/client/notification/RcsInputBox;->mType:Lcom/sec/ims/client/notification/RcsInputBoxType;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mText:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/ims/client/notification/RcsInputBox;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getKey()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mKey:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sec/ims/client/notification/RcsInputBoxType;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mType:Lcom/sec/ims/client/notification/RcsInputBoxType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mKey:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/ims/client/notification/RcsInputBox;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "RcsInputBox Key: %s Value: %s Type: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mKey:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mType:Lcom/sec/ims/client/notification/RcsInputBoxType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mType:Lcom/sec/ims/client/notification/RcsInputBoxType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/sec/ims/client/notification/RcsInputBox;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
