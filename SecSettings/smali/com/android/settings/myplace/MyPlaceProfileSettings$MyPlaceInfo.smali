.class Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyPlaceInfo"
.end annotation


# instance fields
.field private mBtDeviceName:Ljava/lang/String;

.field private mBtMacAddress:Ljava/lang/String;

.field private mByteMap:[B

.field private mGpsLatitude:Ljava/lang/Double;

.field private mGpsLocation:Ljava/lang/String;

.field private mGpsLongitude:Ljava/lang/Double;

.field private mProfileName:Ljava/lang/String;

.field private mTimestamp:Ljava/lang/String;

.field private mType:I

.field private mWifiApBSSID:Ljava/lang/String;

.field private mWifiApName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mWifiApBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mBtMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mProfileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mTimestamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLatitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mGpsLongitude:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I

    return p1
.end method

.method static synthetic access$412(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I
    .locals 1

    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mType:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->mByteMap:[B

    return-object p1
.end method
