.class public Lcom/sec/android/allshare/dmrservice/ItemMetaData;
.super Ljava/lang/Object;
.source "ItemMetaData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/dmrservice/ItemMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

.field private mimeType:Ljava/lang/String;

.field private subtitleuri:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->date:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->subtitleuri:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->mimeType:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->artist:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->album:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->date:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->subtitleuri:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->mimeType:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->artist:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->album:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/allshare/dmrservice/ItemMetaData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->date:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->subtitleuri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->mimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->artist:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->album:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->subtitleuri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
