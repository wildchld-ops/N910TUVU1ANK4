.class public Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
.super Ljava/lang/Object;
.source "PersonalSettingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/dmc/ux/db/PersonalSettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ICON:I = 0x0

.field public static final GALLERY_ICON:I = 0x1


# instance fields
.field private nIconResID:I

.field private nIconType:I

.field private nSettingID:I

.field private strIconPath:Ljava/lang/String;

.field private strUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo$1;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    iput v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconResID:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nSettingID:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strUserName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconResID:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResID()I
    .locals 1

    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconResID:I

    return v0
.end method

.method public getIconType()I
    .locals 1

    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    return v0
.end method

.method public getSettingID()I
    .locals 1

    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nSettingID:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strUserName:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultValue()Z
    .locals 2

    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconResID:I

    const v1, 0x7f02000a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultValue()V
    .locals 3

    iget v1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    const v1, 0x7f02000a

    iput v1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconResID:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    return-void
.end method

.method public setIconPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    return-void
.end method

.method public setIconResID(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconResID:I

    return-void
.end method

.method public setIconType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    return-void
.end method

.method public setSettingID(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nSettingID:I

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strUserName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nSettingID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->nIconResID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->strIconPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
