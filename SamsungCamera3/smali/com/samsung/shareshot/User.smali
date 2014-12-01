.class public Lcom/samsung/shareshot/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_GROUP:I = 0x5

.field private static final MAX_GROUPUSER:I = 0xa

.field private static final MAX_USER:I = 0x32

.field public static final SELECTION_CONFIRMED:I = 0x1

.field public static final SELECTION_REJECTED:I = 0x3

.field public static final SELECTION_UNSELECTED:I = 0x0

.field public static final SELECTION_WAITING:I = 0x2

.field public static final STATE_ACTIVE:I = 0x2

.field public static final STATE_INACTIVE:I = 0x1

.field public static final STATE_OFFLINE:I = 0x0

.field public static final STATE_WAITING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ShareShot"

.field private static final s_nGroupIDs:[[I

.field private static final s_nIDs:[I

.field private static final serialVersionUID:J = -0x3bef7e8e436c3c6eL


# instance fields
.field private context:Landroid/content/Context;

.field private headImage:Landroid/graphics/Bitmap;

.field private iconID:I

.field private selectUserCallBack:Lcom/samsung/shareshot/Interfaces$SelectUserInterface;

.field private selected:Z

.field private updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

.field private userInfo:Lcom/samsung/dmc/ux/db/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x32

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/shareshot/User;->s_nIDs:[I

    const/4 v0, 0x5

    const/16 v1, 0xa

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/samsung/shareshot/User;->s_nGroupIDs:[[I

    new-instance v0, Lcom/samsung/shareshot/User$1;

    invoke-direct {v0}, Lcom/samsung/shareshot/User$1;-><init>()V

    sput-object v0, Lcom/samsung/shareshot/User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/shareshot/User;->context:Landroid/content/Context;

    iput v0, p0, Lcom/samsung/shareshot/User;->iconID:I

    iput-boolean v0, p0, Lcom/samsung/shareshot/User;->selected:Z

    new-instance v0, Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    iput-object p1, p0, Lcom/samsung/shareshot/User;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/shareshot/User;->selected:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-direct {v0}, Lcom/samsung/dmc/ux/db/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/shareshot/User;->setIconID(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/shareshot/User;->onSelected()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setUserID(I)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setIPAddress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setMacAddress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setLoginTime(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setLogoutTime(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setUserStatus(I)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setGroupID(I)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/shareshot/User;->onUnSelected()V

    goto/16 :goto_0
.end method

.method private static AssignID([II)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    const-string v1, "ShareShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Limited ID resource... AssignID id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_0
    aget v1, p0, v0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    aput v1, p0, v0

    const-string v1, "ShareShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AssignID, id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static UnassignGroupID(II)Z
    .locals 1

    sget-object v0, Lcom/samsung/shareshot/User;->s_nGroupIDs:[[I

    aget-object v0, v0, p0

    invoke-static {v0, p1}, Lcom/samsung/shareshot/User;->UnassignID([II)Z

    move-result v0

    return v0
.end method

.method private static UnassignID([II)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "ShareShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnassignID, id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v1, p0, p1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    aput v0, p0, p1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static UnassignNormalID(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/shareshot/User;->s_nIDs:[I

    invoke-static {v0, p0}, Lcom/samsung/shareshot/User;->UnassignID([II)Z

    move-result v0

    return v0
.end method

.method private setHeadImage(Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/shareshot/User;->onSetHeadImage()V

    return-void
.end method


# virtual methods
.method public active()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/shareshot/User;->selectUserCallBack:Lcom/samsung/shareshot/Interfaces$SelectUserInterface;

    invoke-interface {v0, p0}, Lcom/samsung/shareshot/Interfaces$SelectUserInterface;->onActivateUser(Lcom/samsung/shareshot/User;)Z

    return-void
.end method

.method public block()V
    .locals 0

    return-void
.end method

.method public deative()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/shareshot/User;->selectUserCallBack:Lcom/samsung/shareshot/Interfaces$SelectUserInterface;

    invoke-interface {v0, p0}, Lcom/samsung/shareshot/Interfaces$SelectUserInterface;->onDeactivateUser(Lcom/samsung/shareshot/User;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/shareshot/User;

    invoke-virtual {p0}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getHeadImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/shareshot/User;->headImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconID()I
    .locals 1

    iget v0, p0, Lcom/samsung/shareshot/User;->iconID:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getUserID()I
    .locals 3

    const-string v0, "User::getNormalID()"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UserID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v0

    return v0
.end method

.method public getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    return-object v0
.end method

.method public isActivate()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->isActivate()Z

    move-result v0

    goto :goto_0
.end method

.method public isUserSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/shareshot/User;->selected:Z

    return v0
.end method

.method public onSelected()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/shareshot/User;->selected:Z

    return-void
.end method

.method protected onSetHeadImage()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/shareshot/User;->updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/shareshot/User;->updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

    invoke-interface {v0}, Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;->onUpdateState()V

    :cond_0
    return-void
.end method

.method public onUnSelected()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/shareshot/User;->selected:Z

    return-void
.end method

.method public recyle()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/shareshot/User;->UnassignNormalID(I)Z

    return-void
.end method

.method public setActivate(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/dmc/ux/db/UserInfo;->setActivateStatus(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHeadImage()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/shareshot/User;->headImage:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/samsung/dmc/ux/fexplorer/BitmapUtil;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->context:Landroid/content/Context;

    sget v1, Lcom/samsung/shareshot/HeadCtrl;->mPhoto:I

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/samsung/dmc/ux/fexplorer/BitmapUtil;->getBitmapOption(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/dmc/ux/fexplorer/BitmapUtil;->getBitmapFromResID(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/shareshot/User;->headImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/samsung/shareshot/User;->onSetHeadImage()V

    return-void
.end method

.method public setHeadImage(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/shareshot/User;->headImage:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/shareshot/User;->headImage:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/samsung/dmc/ux/fexplorer/BitmapUtil;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/samsung/shareshot/User;->headImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/samsung/shareshot/User;->onSetHeadImage()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ShareShot"

    const-string v1, "bmp == m_HeadImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIconID(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/shareshot/User;->iconID:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/shareshot/User;->updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

    invoke-interface {v0}, Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;->onUpdateState()V

    :cond_0
    return-void
.end method

.method protected setNormalID(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/dmc/ux/db/UserInfo;->setUserID(I)V

    return-void
.end method

.method public setSelectUserCallBack(Lcom/samsung/shareshot/Interfaces$SelectUserInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/shareshot/User;->selectUserCallBack:Lcom/samsung/shareshot/Interfaces$SelectUserInterface;

    return-void
.end method

.method public setSelected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/shareshot/User;->selectUserCallBack:Lcom/samsung/shareshot/Interfaces$SelectUserInterface;

    invoke-interface {v0, p0}, Lcom/samsung/shareshot/Interfaces$SelectUserInterface;->onSelectUser(Lcom/samsung/shareshot/User;)V

    return-void
.end method

.method public setState(I)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setUserStatus(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    const v1, 0x10000002

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setUserStatus(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    const v1, 0x10000001

    invoke-virtual {v0, v1}, Lcom/samsung/dmc/ux/db/UserInfo;->setUserStatus(I)V

    goto :goto_0
.end method

.method public setUnSelected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/shareshot/User;->selectUserCallBack:Lcom/samsung/shareshot/Interfaces$SelectUserInterface;

    invoke-interface {v0, p0}, Lcom/samsung/shareshot/Interfaces$SelectUserInterface;->onCancelSelectUser(Lcom/samsung/shareshot/User;)V

    return-void
.end method

.method public setUpdateUserStateCallBack(Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/shareshot/User;->updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

    return-void
.end method

.method public setUserInfo(Lcom/samsung/dmc/ux/db/UserInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/shareshot/User;->updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/shareshot/User;->updateUserStateCallBack:Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;

    invoke-interface {v1}, Lcom/samsung/shareshot/Interfaces$UpdateUserStateInterface;->onUpdateState()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/shareshot/User;->iconID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/shareshot/User;->selected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getLoginTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getLogoutTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getSettingID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconResID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/shareshot/User;->userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
