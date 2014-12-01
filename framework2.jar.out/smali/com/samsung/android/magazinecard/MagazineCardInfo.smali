.class public Lcom/samsung/android/magazinecard/MagazineCardInfo;
.super Ljava/lang/Object;
.source "MagazineCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    }
.end annotation


# static fields
.field public static CATEGORY_EMAIL:I

.field public static CATEGORY_FAVORITE_APP:I

.field public static CATEGORY_FLIGHT_MODE:I

.field public static CATEGORY_HERE_N_NOW:I

.field public static CATEGORY_MISSED_CALL:I

.field public static CATEGORY_MUSIC_PLAYER:I

.field public static CATEGORY_NEWS:I

.field public static CATEGORY_NEW_MESSAGE:I

.field public static CATEGORY_NONE:I

.field public static CATEGORY_ROAMING:I

.field public static CATEGORY_SOCIAL:I

.field public static CATEGORY_TODAYS_SCHEDULE:I

.field public static CATEGORY_TODAY_BIRTHDAY:I

.field public static CATEGORY_WEATHER:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/magazinecard/MagazineCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static SECURITY_LEVEL_NON_SECURE_MODE_ONLY:I

.field public static SECURITY_LEVEL_NORMAL:I

.field public static SECURITY_LEVEL_SECURE_MODE_ONLY:I


# instance fields
.field public mCardId:I

.field public mCategory:I

.field public mContentView:Landroid/widget/RemoteViews;

.field public mExpandedContentView:Landroid/widget/RemoteViews;

.field public mLaunchIntent:Landroid/app/PendingIntent;

.field public mSecurityLevel:I

.field public mTimeStamp:J

.field public mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    sput v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_SECURE_MODE_ONLY:I

    sput v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_NON_SECURE_MODE_ONLY:I

    sget v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_SECURE_MODE_ONLY:I

    sget v1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_NON_SECURE_MODE_ONLY:I

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_NORMAL:I

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NONE:I

    sput v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_WEATHER:I

    sput v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_TODAYS_SCHEDULE:I

    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MUSIC_PLAYER:I

    const/16 v0, 0x8

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_EMAIL:I

    const/16 v0, 0x10

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEW_MESSAGE:I

    const/16 v0, 0x20

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MISSED_CALL:I

    const/16 v0, 0x40

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEWS:I

    const/16 v0, 0x80

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_SOCIAL:I

    const/16 v0, 0x100

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_HERE_N_NOW:I

    const/16 v0, 0x200

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_FAVORITE_APP:I

    const/16 v0, 0x400

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_ROAMING:I

    const/16 v0, 0x800

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_FLIGHT_MODE:I

    const/16 v0, 0x1000

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_TODAY_BIRTHDAY:I

    new-instance v0, Lcom/samsung/android/magazinecard/MagazineCardInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/magazinecard/MagazineCardInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mTimeStamp:J

    iput v3, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    sget v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_NORMAL:I

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    sget v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NONE:I

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    iput-object v2, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mContentView:Landroid/widget/RemoteViews;

    iput-object v2, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mExpandedContentView:Landroid/widget/RemoteViews;

    iput-object v2, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mLaunchIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "U:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CAT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mExpandedContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expandable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mLaunchIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " haveLauncher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mContentView:Landroid/widget/RemoteViews;

    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mExpandedContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mTimeStamp:J

    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mLaunchIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mExpandedContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
