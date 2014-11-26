.class public Lcom/samsung/dmc/ux/db/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/dmc/ux/db/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final GSSTATUS_ACTIVATE:I = 0x2

.field public static final GSSTATUS_INACTIVATE:I = 0x1

.field public static final GSSTATUS_OFFLINE:I = 0x0

.field public static final GSSTATUS_ONLINE:I = 0x10000000


# instance fields
.field private groupID:I

.field private ipAddress:Ljava/lang/String;

.field private loginTime:Ljava/lang/String;

.field private logoutTime:Ljava/lang/String;

.field private macAddress:Ljava/lang/String;

.field private personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

.field private userID:I

.field private userStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/dmc/ux/db/UserInfo$1;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/UserInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/dmc/ux/db/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userID:I

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->groupID:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    new-instance v0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # I
    .param p8    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userID:I

    iput-object p3, p0, Lcom/samsung/dmc/ux/db/UserInfo;->ipAddress:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/dmc/ux/db/UserInfo;->macAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/dmc/ux/db/UserInfo;->loginTime:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/dmc/ux/db/UserInfo;->logoutTime:Ljava/lang/String;

    iput p7, p0, Lcom/samsung/dmc/ux/db/UserInfo;->groupID:I

    new-instance v0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-virtual {v0, p2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userID:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->macAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->loginTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->logoutTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->groupID:I

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    return-void
.end method

.method public static isActivate(I)Z
    .locals 1
    .param p0    # I

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnline(I)Z
    .locals 1
    .param p0    # I

    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGroupID()I
    .locals 1

    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->groupID:I

    return v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->loginTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoutTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->logoutTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    return-object v0
.end method

.method public getUserID()I
    .locals 1

    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userID:I

    return v0
.end method

.method public getUserStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    return v0
.end method

.method public isActivate()Z
    .locals 1

    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    invoke-static {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->isActivate(I)Z

    move-result v0

    return v0
.end method

.method public isOnline()Z
    .locals 1

    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    invoke-static {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->isOnline(I)Z

    move-result v0

    return v0
.end method

.method public isSameIPAddress(Lcom/samsung/dmc/ux/db/UserInfo;)Z
    .locals 2
    .param p1    # Lcom/samsung/dmc/ux/db/UserInfo;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public setActivateStatus(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    goto :goto_0
.end method

.method public setGroupID(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->groupID:I

    return-void
.end method

.method public setIPAddress(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->ipAddress:Ljava/lang/String;

    return-void
.end method

.method public setLoginTime(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->loginTime:Ljava/lang/String;

    return-void
.end method

.method public setLogoutTime(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->logoutTime:Ljava/lang/String;

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->macAddress:Ljava/lang/String;

    return-void
.end method

.method public setOnlineStatus(Z)V
    .locals 2
    .param p1    # Z

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    goto :goto_0
.end method

.method public setUserID(I)V
    .locals 1
    .param p1    # I

    iput p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userID:I

    iget-object v0, p0, Lcom/samsung/dmc/ux/db/UserInfo;->personInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    return-void
.end method

.method public setUserStatus(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/samsung/dmc/ux/db/UserInfo;->userStatus:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getLoginTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getLogoutTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getSettingID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconResID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
