.class public Lcom/android/mms/ui/SelectMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;,
        Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;,
        Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;,
        Lcom/android/mms/ui/SelectMapActivity$createCaputreMap;
    }
.end annotation


# static fields
.field private static final GET_MYLOCATION:I = 0x0

.field private static MESSAGE_LOCATION_TEMP_FILENAME:Ljava/lang/String; = null

.field private static final UPDATE_LOCATION:I = 0x1

.field private static final UPDATE_MAP_FROM_LOCATION:I = 0x2


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private mCurrentLocThread:Ljava/lang/Thread;

.field private mCurrentLocation:Landroid/widget/ImageButton;

.field private mEditText:Landroid/widget/EditText;

.field private mGeo:Landroid/location/Geocoder;

.field private mLocation:Ljava/lang/String;

.field mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mMapView:Lcom/google/android/maps/MapView;

.field private mMenuCancel:Landroid/widget/Button;

.field private mMenuDone:Landroid/widget/Button;

.field private mPickImage:Z

.field private mSearchFrame:Landroid/widget/LinearLayout;

.field private mSearchPoint:Lcom/google/android/maps/GeoPoint;

.field mSearchRunnable:Ljava/lang/Runnable;

.field private mSearchText:Landroid/widget/EditText;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectMapHandler:Landroid/os/Handler;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MessageLocationTempJPG.tmp"

    sput-object v0, Lcom/android/mms/ui/SelectMapActivity;->MESSAGE_LOCATION_TEMP_FILENAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    const-string v0, "Mms/SelectMapActivity"

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchText:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuCancel:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mCurrentLocThread:Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectMapActivity$2;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectMapActivity$5;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectMapActivity$6;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mCurrentLocThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SelectMapActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->updateMapFromLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SelectMapActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mPickImage:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/SelectMapActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SelectMapActivity;)Landroid/location/Geocoder;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SelectMapActivity;D)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/SelectMapActivity;IILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SelectMapActivity;IIII)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Lcom/google/android/maps/GeoPoint;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SelectMapActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->getLocationServiceAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SelectMapActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->searchLocation()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchText:Landroid/widget/EditText;

    return-object v0
.end method

.method private addMarker(IILjava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/mms/ui/SelectMapActivity;->getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    const/4 v2, 0x1

    return v2
.end method

.method private convToDouble(I)D
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private convToInt(D)I
    .locals 2

    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method private getFromLocationName(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v15, "getFromLocationName"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_1
    new-instance v2, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    const v11, 0x55d4a80

    const v9, -0x55d4a80

    const v12, 0xaba9500

    const v10, -0xaba9500

    const/4 v14, 0x5

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v14}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v14}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v8

    const/4 v14, 0x0

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    invoke-virtual {v4}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_2

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v5

    invoke-virtual {v1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v7

    invoke-virtual {v1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v14}, Lcom/android/mms/ui/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v12, v10}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(IIII)Z

    :cond_3
    :goto_2
    const/4 v14, 0x1

    goto :goto_0

    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0174

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getFromLocationName(), Toast: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v14

    goto :goto_2
.end method

.method private getLocationServiceAvailable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMyLocation()Lcom/google/android/maps/GeoPoint;
    .locals 15

    const-wide v13, 0x412e848000000000L

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v1, "getMyLocation"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v10

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x447a0000

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v1, "use location service by NETWORK_PROVIDER "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez v12, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v10

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x447a0000

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v1, "use location service by GPS_PROVIDER "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    if-nez v12, :cond_2

    if-nez v9, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v1, "Can not use location service!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :catch_0
    move-exception v6

    const/4 v12, 0x0

    goto :goto_0

    :catch_1
    move-exception v6

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    if-eqz v10, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v1, "got location"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    mul-double/2addr v0, v13

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    mul-double/2addr v0, v13

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    new-instance v11, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {v8}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-direct {v11, v0, v1}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    :cond_3
    move-object v0, v11

    goto :goto_2
.end method

.method private getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;
    .locals 3

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    new-instance v0, Lcom/google/android/maps/OverlayItem;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/google/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private initMarker()Z
    .locals 5

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020395

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;-><init>(Lcom/android/mms/ui/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(IIII)Z
    .locals 5

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v4, "move to marker"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v0, p2, p1

    sub-int v1, p4, p3

    new-instance v2, Lcom/google/android/maps/GeoPoint;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p1

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p3

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    iput-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/mms/ui/SelectMapActivity;Lcom/android/mms/ui/SelectMapActivity$1;)V

    new-array v1, v3, [Lcom/google/android/maps/GeoPoint;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v3
.end method

.method private searchLocation()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v2, "searchLocation"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->logWithTrace(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v2, "empay location to search"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    new-instance v1, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;-><init>(Lcom/android/mms/ui/SelectMapActivity;Lcom/android/mms/ui/SelectMapActivity$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setSearchButtonState(I)V
    .locals 0

    return-void
.end method

.method private updateActionBar()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f040044

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuCancel:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/SelectMapActivity$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SelectMapActivity$3;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/SelectMapActivity$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SelectMapActivity$4;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 14

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateLocation"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, ""

    const/4 v9, 0x0

    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v8

    const/4 v11, 0x0

    :goto_0
    if-gt v11, v8, :cond_2

    invoke-virtual {v6, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v11, :cond_1

    move-object v12, v7

    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_1

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    return-object v12
.end method

.method private updateMapFromLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v7, "updateLocationfromGetMyLocation"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, ""

    const/4 v12, 0x0

    :try_start_0
    new-instance v5, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v8

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v18

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    invoke-virtual {v14}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    const v21, 0x55d4a80

    const v19, -0x55d4a80

    const v22, 0xaba9500

    const v20, -0xaba9500

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v7, "location data found in updateLocationfromGetMyLocation"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/Address;

    invoke-virtual {v11}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v15

    invoke-virtual {v11}, Landroid/location/Address;->getLongitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v17

    invoke-virtual {v11}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v15, v1, v6}, Lcom/android/mms/ui/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    move/from16 v0, v21

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v19

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v22

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(IIII)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v16

    :catch_0
    move-exception v13

    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected captureMap()V
    .locals 8

    iget-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v7, "capture map"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/android/maps/MapView;->setDrawingCacheEnabled(Z)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/view/ViewRootImpl$CalledFromWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v7, "saved value is null!!!"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;->printStackTrace()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    sub-int v6, v3, v6

    div-int/lit8 v4, v6, 0x2

    if-gez v4, :cond_1

    const/4 v4, 0x0

    iput v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    :cond_1
    iget v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    sub-int v6, v2, v6

    div-int/lit8 v5, v6, 0x2

    if-gez v5, :cond_2

    const/4 v5, 0x0

    iput v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    :cond_2
    iget v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    iget v7, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    invoke-static {v1, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected doFinish(Ljava/lang/String;)V
    .locals 6

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "location"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/SelectMapActivity;->MESSAGE_LOCATION_TEMP_FILENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v1}, Lcom/android/mms/ui/MessageUtils;->SaveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const-string v3, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/mms/ui/SelectMapActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->finish()V

    :cond_2
    return-void
.end method

.method protected getAddressAndURL(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 14

    const-string v11, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v3

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ge v9, v5, :cond_1

    invoke-virtual {v6, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v6, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "\n"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://maps.google.com/maps?f=q&q=("

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ")"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "\n"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :goto_1
    return-object v11

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected getURL(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 7

    const-string v4, ""

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://maps.google.com/maps?f=q&q=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v6, "onCreate()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "image_location"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mPickImage:Z

    const v5, 0x7f04009a

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->updateActionBar()V

    new-instance v5, Landroid/location/Geocoder;

    invoke-direct {v5, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    const v5, 0x7f0b0349

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/maps/MapView;

    iput-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v5, v7}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/google/android/maps/MapController;->setZoom(I)I

    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->initMarker()Z

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    const-string v4, "location"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    iput-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const v5, 0x7f0b033e

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SearchView;

    iput-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v7}, Landroid/widget/SearchView;->setIconified(Z)V

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    const-string v6, "search"

    invoke-virtual {v5, v6}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.android.mms"

    const-string v6, "com.android.mms.ui.SelectMapActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v0}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "android:id/search_src_text"

    invoke-virtual {v5, v6, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v3}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchText:Landroid/widget/EditText;

    const v5, 0x7f0b0347

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const v5, 0x7f0b0348

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/mms/ui/SelectMapActivity$1;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/SelectMapActivity$1;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->searchLocation()V

    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStart()V

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v2, "onStart()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStop()V

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method
