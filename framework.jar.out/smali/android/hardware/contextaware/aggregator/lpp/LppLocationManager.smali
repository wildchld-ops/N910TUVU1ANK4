.class Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
.super Ljava/lang/Object;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$FindGps;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsNmeaListener;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;,
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;
    }
.end annotation


# static fields
.field private static final CHECK_GPS_WIFI_AVAILABILITY:I = 0x28

.field private static final FIRST_TIME_GPS_TIMEOUT:I = 0x28

.field private static final GPSBATCH_ENTRY_COUNT:I = 0x4

.field private static final GPS_BATCH_REQ_TIMEOUT:I = 0x5

.field private static final INDOOR_ENTRY_NO_GPS_COUNT:I = 0x3

.field private static final LOC_VALID_ACCURACY_GPS:I = 0x10

.field private static final LOC_VALID_ACCURACY_NW:I = 0x28

.field private static final LOC_VALID_TIME_GPS:I = 0x3

.field private static final NLP_TIMEOUT:I = 0x4

.field private static final OUTDOOR_ENTRY_GPS_COUNT:I = 0x3

.field private static final OUTDOOR_EXIT_ACCURACY:I = 0x32

.field private static final PASSIVE_INACTIVE_TIME:I = 0x14

.field public static final PASSIVE_LOC_ACC_VALIDITY:F = 32.0f

.field private static final PASSIVE_LOC_DIST_VALIDITY:D = 10.0

.field private static final PASSIVE_LOC_VALIDITY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LppLocationManager"

.field static final vals:[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;


# instance fields
.field count:I

.field private mContext:Landroid/content/Context;

.field private final mFindGps:Landroid/location/LocationListener;

.field private final mGpsNmeaLnr:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsNmeaListener;

.field private final mGpsStatusLnr:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

.field private mGpsTimeout:J

.field private mLastLoc:Landroid/location/Location;

.field private final mListLoc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mListPassiveLoc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

.field private mLocLnr:Landroid/location/LocationListener;

.field private mLocMgr:Landroid/location/LocationManager;

.field private mLocMostAccGps:Landroid/location/Location;

.field private mLocNw:Landroid/location/Location;

.field private mLppResolution:I

.field private mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

.field private mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

.field private mTimeRequest:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->values()[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    move-result-object v0

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->vals:[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$FindGps;

    invoke-direct {v0, p0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$FindGps;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mFindGps:Landroid/location/LocationListener;

    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;

    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListPassiveLoc:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

    invoke-direct {v0, p0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mGpsStatusLnr:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsNmeaListener;

    invoke-direct {v0, p0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsNmeaListener;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mGpsNmeaLnr:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsNmeaListener;

    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->count:I

    return-void
.end method

.method static synthetic access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mFindGps:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .locals 0
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1    # Landroid/location/LocationManager;

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1    # Landroid/location/Location;

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1    # Landroid/location/Location;

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocLnr:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;J)J
    .locals 0
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1    # J

    iput-wide p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mTimeRequest:J

    return-wide p1
.end method

.method static synthetic access$2100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)J
    .locals 2
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mGpsTimeout:J

    return-wide v0
.end method

.method static synthetic access$2200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mGpsStatusLnr:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)I
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I

    return v0
.end method

.method static synthetic access$5800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListPassiveLoc:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    return-object v0
.end method

.method static synthetic access$8300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$8302(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1    # Landroid/location/Location;

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$8400(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1    # Landroid/location/Location;

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->locValidCheckNw(Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 1
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1    # Landroid/location/Location;

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->locValidCheckGps(Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)V
    .locals 0
    .param p0    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p1    # Landroid/location/Location;

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->setMostAccLocGps(Landroid/location/Location;)V

    return-void
.end method

.method private locValidCheckGps(Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 6
    .param p1    # Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mTimeRequest:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time is not enough - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mTimeRequest:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_TIME:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x41800000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS: Accuracy is not good:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_ACC:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->VALID:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    goto :goto_0
.end method

.method private locValidCheckNw(Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    .locals 3
    .param p1    # Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42200000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N/W: Accuracy is not good:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_ACC:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->VALID:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    goto :goto_0
.end method

.method private setMostAccLocGps(Landroid/location/Location;)V
    .locals 2
    .param p1    # Landroid/location/Location;

    const-string v0, "LppLocationManager"

    const-string v1, "setMostAccLoc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    if-nez v0, :cond_1

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public static validPassDist(DDDD)Z
    .locals 23
    .param p0    # D
    .param p2    # D
    .param p4    # D
    .param p6    # D

    const-wide v1, 0x40b8e30000000000L

    sub-double v17, p4, p0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    sub-double v17, p6, p2

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    const-wide/high16 v17, 0x4000000000000000L

    div-double v17, v9, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    const-wide/high16 v19, 0x4000000000000000L

    div-double v19, v9, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    const-wide/high16 v19, 0x4000000000000000L

    div-double v19, v11, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    const-wide/high16 v21, 0x4000000000000000L

    div-double v21, v11, v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    add-double v3, v17, v19

    const-wide/high16 v17, 0x4000000000000000L

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    const-wide/high16 v21, 0x3ff0000000000000L

    sub-double v21, v21, v3

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v19

    mul-double v5, v17, v19

    mul-double v17, v1, v5

    const-wide v19, 0x408f400000000000L

    mul-double v7, v17, v19

    const-wide/high16 v17, 0x4024000000000000L

    cmpg-double v17, v7, v17

    if-gez v17, :cond_0

    const-string v17, "LppLocationManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "distance not valid:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    const-string v17, "LppLocationManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "distance valid:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getLastHeight()D
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLastLoc()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    return-object v0
.end method

.method public getLastLocLat()D
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLastLocLon()D
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public locRequest(I)V
    .locals 5
    .param p1    # I

    const-string v1, "LppLocationManager"

    const-string v2, "LocRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->count:I

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->getLastLoc()Landroid/location/Location;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$8100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->getState()Lcom/android/internal/util/IState;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$8200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mGpsBatch:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    move-result-object v2

    if-eq v1, v2, :cond_1

    const-string v1, "LppLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "passive loc found!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->locUpdate(Ljava/util/ArrayList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->STATIONARY:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->sendMessage(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->WALK:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->VEHICLE:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    goto :goto_1
.end method

.method public sendStatus()V
    .locals 0

    return-void
.end method

.method public sendStatus(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    invoke-interface {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->status(Ljava/lang/String;)V

    return-void
.end method

.method public setLppResolution(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I

    return-void
.end method

.method public start(Landroid/hardware/contextaware/aggregator/lpp/LppConfig;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;)V
    .locals 2
    .param p1    # Landroid/hardware/contextaware/aggregator/lpp/LppConfig;
    .param p2    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    const-string v0, "LppLocationManager"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "LppLocationManager"

    const-string v1, "config null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "LppLocationManager"

    const-string v1, "context null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    const-string v0, "LppLocationManager"

    const-string v1, "mLocMgr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocLnr:Landroid/location/LocationListener;

    iput-object p2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    iget v0, p1, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mGpsTimeout:J

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    const-string v1, "LppLocationManager"

    invoke-direct {v0, p0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->start()V

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->START:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    const-string v1, "LppLocationManager"

    invoke-direct {v0, p0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    const-string v0, "LppLocationManager"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->STOP:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->exit()V
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->access$400(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V

    :cond_1
    return-void
.end method
