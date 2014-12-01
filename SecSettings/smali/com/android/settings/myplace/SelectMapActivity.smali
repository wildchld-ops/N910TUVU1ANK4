.class public Lcom/android/settings/myplace/SelectMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;,
        Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;,
        Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private mCloseIcon:Landroid/widget/ImageButton;

.field private mCurrentLocation:Landroid/widget/ImageButton;

.field private mEditText:Landroid/widget/EditText;

.field private mGeo:Landroid/location/Geocoder;

.field private mIsTabletConfig:Z

.field private mLatitude:I

.field private mLocation:Ljava/lang/String;

.field private mLocationDisabledDialog:Landroid/app/AlertDialog;

.field private mLongitude:I

.field private mMapMode:I

.field protected mMapView:Lcom/google/android/maps/MapView;

.field private mMapZoomLevel:I

.field private mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

.field private mResearch:Z

.field private mSaveButton:Landroid/widget/Button;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSearchContainer:Landroid/view/View;

.field private mSearchIcon:Landroid/widget/ImageView;

.field mSearchRunnable:Ljava/lang/Runnable;

.field private mSearchViewContainer:Landroid/widget/FrameLayout;

.field private mSnippet:Ljava/lang/String;

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    const-string v0, "SelectMapActivity"

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    iput v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iput v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    iput v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapZoomLevel:I

    new-instance v0, Lcom/android/settings/myplace/SelectMapActivity$10;

    invoke-direct {v0, p0}, Lcom/android/settings/myplace/SelectMapActivity$10;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->searchLocation()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/myplace/SelectMapActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/myplace/SelectMapActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/location/Geocoder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/myplace/SelectMapActivity;D)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/myplace/SelectMapActivity;IILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings/myplace/SelectMapActivity;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/myplace/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/myplace/SelectMapActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mIsTabletConfig:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/myplace/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/myplace/SelectMapActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->showLocationDisabledDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/myplace/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->setMyLocationOverlay()V

    return-void
.end method

.method private addMarker(IILjava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    invoke-direct {p0, p1, p2, v4, p3}, Lcom/android/settings/myplace/SelectMapActivity;->getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    iput p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iput p2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    iput-object p3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    new-instance v2, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v2, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v4, v6, [Lcom/google/android/maps/GeoPoint;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v6
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
    .locals 22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_1

    :cond_0
    const/16 v19, 0x0

    :goto_0
    return v19

    :cond_1
    new-instance v5, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    const v17, 0x55d4a80

    const v15, -0x55d4a80

    const v18, 0xaba9500

    const v16, -0xaba9500

    const/16 v19, 0x5

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v14

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    invoke-virtual {v7}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_2

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getLatitude()D

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v8

    invoke-virtual {v3}, Landroid/location/Address;->getLongitude()D

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v10

    invoke-virtual {v3}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v10, v1}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    move/from16 v0, v17

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v17

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v0, v18

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v16

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getLatitude()D

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v11

    invoke-virtual {v3}, Landroid/location/Address;->getLongitude()D

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z

    :cond_3
    :goto_2
    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f091776

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

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

    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(II)Z
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v2, v4, [Lcom/google/android/maps/GeoPoint;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setZoom(I)I

    iput p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iput p2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    return v4
.end method

.method private moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    new-instance v0, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v1, v3, [Lcom/google/android/maps/GeoPoint;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    return v3
.end method

.method private searchLocation()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    if-eqz v2, :cond_0

    :cond_2
    iput-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    new-instance v2, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setMyLocationOverlay()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$11;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/SelectMapActivity$11;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MyLocationOverlay;->runOnFirstFix(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showLocationDisabledDialog()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f091778

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091779

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0909d5

    new-instance v2, Lcom/android/settings/myplace/SelectMapActivity$14;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/SelectMapActivity$14;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901ba

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 13

    const-string v12, ""

    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fa_FA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "fa_IR"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :cond_0
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->convToDouble(I)D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/myplace/SelectMapActivity;->convToDouble(I)D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v8

    const/4 v11, 0x0

    :goto_0
    if-gt v11, v8, :cond_3

    invoke-virtual {v6, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v11, :cond_2

    move-object v12, v7

    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_1

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    return-object v12
.end method


# virtual methods
.method protected captureMap()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v5, v4}, Lcom/google/android/maps/MapView;->setDrawingCacheEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    add-int/2addr v6, v2

    if-lt v5, v6, :cond_0

    iget v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureWidth:I

    iget v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    invoke-static {v0, v1, v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    move v3, v4

    goto :goto_0
.end method

.method public configureActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040064

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    return-void
.end method

.method protected doFinish()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "latitude"

    iget v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "longitude"

    iget v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "location"

    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->captureMap()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v2, "map"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/myplace/SelectMapActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    const-string v4, "android.os.AsyncTask"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v6, 0x7f0208d3

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setIcon(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v6, 0x7f0908ae

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/16 v6, 0xe

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "location"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v4, "mode"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    const-string v4, "map_latitude"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    const-string v4, "map_longtitude"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    const v4, 0x7f040221

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->setContentView(I)V

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mIsTabletConfig:Z

    new-instance v4, Landroid/location/Geocoder;

    invoke-direct {v4, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    const v4, 0x7f0b0544

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/maps/MapView;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4, v7}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    const v4, 0x7f0b053e

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchContainer:Landroid/view/View;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$1;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$1;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v4, 0x7f0b0540

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;

    const v4, 0x7f0b0541

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$2;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$2;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0b053f

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;

    const v4, 0x7f0b04b7

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    const v6, 0x10000003

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$3;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$3;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    const-wide/16 v7, 0x64

    invoke-virtual {v4, v6, v7, v8}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$4;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$4;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$5;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$5;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v4, "       "

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/android/settings/myplace/SelectMapActivity$6;

    invoke-direct {v6, p0}, Lcom/android/settings/myplace/SelectMapActivity$6;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v6, "My_Location"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x1060000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    :goto_1
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    if-lez v1, :cond_8

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    const v4, 0x7f0b0542

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/settings/myplace/SelectMapActivity$7;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/SelectMapActivity$7;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0b0543

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/settings/myplace/SelectMapActivity$8;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/SelectMapActivity$8;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0166

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0165

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureWidth:I

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, ""

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    :cond_3
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v5, "My_Location"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->setMyLocationOverlay()V

    :cond_5
    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->configureActionBar()V

    :cond_6
    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto/16 :goto_1

    :cond_8
    move v1, v5

    goto/16 :goto_2

    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v1, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v0, 0x7f0b013b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mcancelButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/myplace/SelectMapActivity$12;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/SelectMapActivity$12;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b013c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    const v1, 0x7f090cdd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$13;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/SelectMapActivity$13;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    if-nez v0, :cond_1

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return v4

    :cond_2
    const v0, 0x7f0901ba

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f090fed

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x54

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->searchLocation()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->doFinish()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v1, :cond_1

    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
        0x7f0b013b -> :sswitch_2
        0x7f0b013c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    const-string v0, "snippet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->initMarker()Z

    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    const-string v2, "here"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z

    :cond_2
    return-void

    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$9;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/SelectMapActivity$9;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v1, "My_Location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    :cond_4
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "location"

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "latitude"

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "longitude"

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "snippet"

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
