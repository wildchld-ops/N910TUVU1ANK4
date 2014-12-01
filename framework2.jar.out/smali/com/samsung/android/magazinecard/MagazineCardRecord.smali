.class public Lcom/samsung/android/magazinecard/MagazineCardRecord;
.super Ljava/lang/Object;
.source "MagazineCardRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/magazinecard/MagazineCardRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

.field public mComponentName:Landroid/content/ComponentName;

.field public mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/magazinecard/MagazineCardRecord$1;

    invoke-direct {v0}, Lcom/samsung/android/magazinecard/MagazineCardRecord$1;-><init>()V

    sput-object v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/magazinecard/MagazineCardInfo;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    iput p1, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    iput-object p2, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/magazinecard/MagazineCardInfo;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/magazinecard/MagazineCardRecord;-><init>(ILcom/samsung/android/magazinecard/MagazineCardInfo;)V

    iput-object p3, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    invoke-virtual {v2}, Lcom/samsung/android/magazinecard/MagazineCardInfo;->dump()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/magazinecard/MagazineCardRecord;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAppName()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-lez v3, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    const-class v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iput-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
