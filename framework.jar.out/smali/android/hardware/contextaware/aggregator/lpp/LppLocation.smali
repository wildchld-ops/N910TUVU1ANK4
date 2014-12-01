.class public Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
.super Ljava/lang/Object;
.source "LppLocation.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public Capturedtime:J

.field private Updated:Z

.field private loc:Landroid/location/Location;

.field private mOrgHei:D

.field private mOrgLat:D

.field private mOrgLon:D

.field private mPosECEF_X:D

.field private mPosECEF_Y:D

.field private mPosECEF_Z:D

.field private mPosEast:D

.field private mPosNorth:D

.field private mPosUp:D

.field private movingStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LppLocation"

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    new-instance v0, Landroid/location/Location;

    const-string v1, "NOPROVIDER"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    new-instance v0, Landroid/location/Location;

    iget-object v1, p1, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 7

    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    if-eqz p1, :cond_0

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string v1, "NOPROVIDER"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    goto :goto_0
.end method

.method private CalCoordinate()V
    .locals 9

    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    new-array v2, v4, [D

    new-array v3, v4, [D

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v2, v6

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v2, v7

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    aput-wide v4, v2, v8

    iget-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v3, v6

    iget-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v3, v7

    iget-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    aput-wide v4, v3, v8

    invoke-static {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2enu([D[D)[D

    move-result-object v1

    aget-wide v4, v1, v6

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    aget-wide v4, v1, v7

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    aget-wide v4, v1, v8

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosUp:D

    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v0

    aget-wide v4, v0, v6

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosECEF_X:D

    aget-wide v4, v0, v7

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Y:D

    aget-wide v4, v0, v8

    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Z:D

    return-void
.end method


# virtual methods
.method public PosPropation(DD)V
    .locals 11

    iget-boolean v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v7, :cond_0

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-wide v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    mul-double v9, v0, p3

    add-double/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    iget-wide v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    mul-double v9, v2, p3

    add-double/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    const/4 v7, 0x3

    new-array v6, v7, [D

    const/4 v7, 0x3

    new-array v4, v7, [D

    const/4 v7, 0x0

    iget-wide v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    aput-wide v8, v4, v7

    const/4 v7, 0x1

    iget-wide v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    aput-wide v8, v4, v7

    const/4 v7, 0x2

    iget-wide v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosUp:D

    aput-wide v8, v4, v7

    const/4 v7, 0x0

    iget-wide v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x2

    iget-wide v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    aput-wide v8, v6, v7

    invoke-static {v4, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v5

    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    const/4 v8, 0x0

    aget-wide v8, v5, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    const/4 v8, 0x2

    aget-wide v8, v5, v8

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setAltitude(D)V

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    return-void
.end method

.method public distanceTo(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)D
    .locals 10

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double v0, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public getAccuracy()F
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public getAltitude()D
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLoc()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMovingStatus()I
    .locals 1

    iget v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    return v0
.end method

.method public getOriginAltitude()D
    .locals 2

    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    return-wide v0
.end method

.method public getOriginLat()D
    .locals 2

    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    return-wide v0
.end method

.method public getOriginLon()D
    .locals 2

    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    return-wide v0
.end method

.method public getPosECEF_X()D
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    :cond_0
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosECEF_X:D

    return-wide v0
.end method

.method public getPosECEF_Y()D
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    :cond_0
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Y:D

    return-wide v0
.end method

.method public getPosECEF_Z()D
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    :cond_0
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Z:D

    return-wide v0
.end method

.method public getPosEastLocal()D
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    :cond_0
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    return-wide v0
.end method

.method public getPosNorthLocal()D
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    :cond_0
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    return-wide v0
.end method

.method public getPosUpLocal()D
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    :cond_0
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mPosUp:D

    return-wide v0
.end method

.method public getSystemTime()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V
    .locals 7

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    iget-object v1, p1, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getOriginLat()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getOriginLon()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getOriginAltitude()D

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getSystemTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    return-void
.end method

.method public set(Landroid/location/Location;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setSystemTime()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    goto :goto_0
.end method

.method public setAltitude(D)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setAltitude(D)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    return-void
.end method

.method public setMovingStatus(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    return-void
.end method

.method public setOrigin(DDD)V
    .locals 1

    iput-wide p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    iput-wide p3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    iput-wide p5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    return-void
.end method

.method public setSystemTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    return-void
.end method

.method public setSystemTime(J)V
    .locals 7

    iget-wide v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    const-string v3, "setSystemTime() - Abnormal method calling"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-wide v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    sub-long v2, p1, v2

    long-to-double v0, v2

    const-wide v2, 0x430c6bf526340000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "systemtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "     Capturedtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSystemTime() - systemtime overflow or propagation error timediff"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-wide p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    const-wide v5, 0x3eb0c6f7a0b5ed8dL

    mul-double/2addr v5, v0

    double-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setTime(J)V

    goto :goto_0
.end method
