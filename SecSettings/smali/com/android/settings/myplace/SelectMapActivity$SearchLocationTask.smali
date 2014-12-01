.class Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;
.super Landroid/os/AsyncTask;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myplace/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchLocationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/SelectMapActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mGeo:Landroid/location/Geocoder;
    invoke-static {v3}, Lcom/android/settings/myplace/SelectMapActivity;->access$1300(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/location/Geocoder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    iget-object v13, v13, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v13}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v8

    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    invoke-virtual {v3}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    const v11, 0x55d4a80

    const v9, -0x55d4a80

    const v12, 0xaba9500

    const v10, -0xaba9500

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v14

    # invokes: Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I
    invoke-static {v13, v14, v15}, Lcom/android/settings/myplace/SelectMapActivity;->access$1400(Lcom/android/settings/myplace/SelectMapActivity;D)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v14

    # invokes: Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I
    invoke-static {v13, v14, v15}, Lcom/android/settings/myplace/SelectMapActivity;->access$1400(Lcom/android/settings/myplace/SelectMapActivity;D)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z
    invoke-static {v13, v4, v5, v14}, Lcom/android/settings/myplace/SelectMapActivity;->access$1500(Lcom/android/settings/myplace/SelectMapActivity;IILjava/lang/String;)Z

    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v14

    # invokes: Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I
    invoke-static {v13, v14, v15}, Lcom/android/settings/myplace/SelectMapActivity;->access$1400(Lcom/android/settings/myplace/SelectMapActivity;D)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v14

    # invokes: Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I
    invoke-static {v13, v14, v15}, Lcom/android/settings/myplace/SelectMapActivity;->access$1400(Lcom/android/settings/myplace/SelectMapActivity;D)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # invokes: Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z
    invoke-static {v13, v6, v7}, Lcom/android/settings/myplace/SelectMapActivity;->access$1600(Lcom/android/settings/myplace/SelectMapActivity;II)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v15}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f091776

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/settings/myplace/SelectMapActivity;->access$800(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
