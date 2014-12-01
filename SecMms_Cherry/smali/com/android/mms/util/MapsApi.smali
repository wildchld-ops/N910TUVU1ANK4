.class public Lcom/android/mms/util/MapsApi;
.super Ljava/lang/Object;
.source "MapsApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MapsApi"


# instance fields
.field converted_lat:D

.field converted_lng:D

.field lat:D

.field lng:D

.field mActivity:Landroid/app/Activity;

.field mMyAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/util/MapsApi;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getConvertedLat()D
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/util/MapsApi;->converted_lat:D

    return-wide v0
.end method

.method public getConvertedLng()D
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/util/MapsApi;->converted_lng:D

    return-wide v0
.end method

.method public handleOnLocationChanged(Landroid/location/Location;)Ljava/lang/String;
    .locals 23

    const/16 v16, 0x0

    const-string v7, "MapsApi"

    const-string v19, "handleOnLocationChanged start"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v19

    const-wide v21, 0x412e848000000000L

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    const-wide v21, 0x412e848000000000L

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    new-instance v15, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v12}, Ljava/lang/Double;->intValue()I

    move-result v7

    invoke-virtual {v13}, Ljava/lang/Double;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v15, v7, v0}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-virtual {v15}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v19, v0

    const-wide v21, 0x412e848000000000L

    div-double v3, v19, v21

    invoke-virtual {v15}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v19, v0

    const-wide v21, 0x412e848000000000L

    div-double v5, v19, v21

    const/4 v10, 0x0

    :try_start_0
    new-instance v2, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/util/MapsApi;->mActivity:Landroid/app/Activity;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v2, v7, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v10

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/Address;

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v9}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ge v14, v7, :cond_1

    invoke-virtual {v9, v14}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v9, v14}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "http://maps.google.com/maps?f=q&q=("

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v19, ")"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/mms/util/MapsApi;->mMyAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/util/MapsApi;->mMyAddress:Ljava/lang/String;

    return-object v7

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public invokeCoordinateConvert()V
    .locals 2

    const-string v0, "MapsApi"

    const-string v1, "invokeCoordinateConvert"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocation(DD)V
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/util/MapsApi;->lat:D

    iput-wide p3, p0, Lcom/android/mms/util/MapsApi;->lng:D

    iput-wide p1, p0, Lcom/android/mms/util/MapsApi;->converted_lat:D

    iput-wide p3, p0, Lcom/android/mms/util/MapsApi;->converted_lng:D

    return-void
.end method
