.class public Lcom/android/settings/search/SearchItem;
.super Ljava/lang/Object;
.source "SearchItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SearchItem$PathAndRegisterMode;,
        Lcom/android/settings/search/SearchItem$MenuInfoItem;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public iconResId:I

.field public id_key:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public menuPath:Ljava/lang/String;

.field public menuType:I

.field public pakageName:Ljava/lang/String;

.field public parentsKey:Ljava/lang/String;

.field public registerMode:I

.field public rowId:I

.field public summary:Ljava/lang/String;

.field public summaryResId:J

.field public title:Ljava/lang/String;

.field public titleResId:J

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/search/SearchItem$1;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem$1;-><init>()V

    sput-object v0, Lcom/android/settings/search/SearchItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/settings/search/SearchItem;->rowId:I

    iput-wide v3, p0, Lcom/android/settings/search/SearchItem;->titleResId:J

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    iput-wide v3, p0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    iput v1, p0, Lcom/android/settings/search/SearchItem;->iconResId:I

    iput-object v2, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/search/SearchItem;->menuType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->menuPath:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/search/SearchItem;->value:I

    iput-object v2, p0, Lcom/android/settings/search/SearchItem;->language:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/search/SearchItem;->registerMode:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/settings/search/SearchItem;->rowId:I

    iput-wide v3, p0, Lcom/android/settings/search/SearchItem;->titleResId:J

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    iput-wide v3, p0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    iput v1, p0, Lcom/android/settings/search/SearchItem;->iconResId:I

    iput-object v2, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/search/SearchItem;->menuType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->menuPath:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/search/SearchItem;->value:I

    iput-object v2, p0, Lcom/android/settings/search/SearchItem;->language:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/search/SearchItem;->registerMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/search/SearchItem;->titleResId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/SearchItem;->iconResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/SearchItem;->menuType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchItem;->language:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/SearchItem;->registerMode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/settings/search/SearchItem;->titleResId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/android/settings/search/SearchItem;->iconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/search/SearchItem;->menuType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->pakageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/search/SearchItem;->registerMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
