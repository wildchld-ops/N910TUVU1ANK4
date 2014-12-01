.class Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;
.super Landroid/os/AsyncTask;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SelectMapActivity;
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
.field final synthetic this$0:Lcom/android/mms/ui/SelectMapActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/SelectMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/SelectMapActivity;Lcom/android/mms/ui/SelectMapActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

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

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/SelectMapActivity;->access$200(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getFromLocationName start"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mGeo:Landroid/location/Geocoder;
    invoke-static {v3}, Lcom/android/mms/ui/SelectMapActivity;->access$1700(Lcom/android/mms/ui/SelectMapActivity;)Landroid/location/Geocoder;

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

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    iget-object v11, p0, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/mms/ui/SelectMapActivity;->access$200(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "post searchlocation task"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v11, v11, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v11}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v5

    const/4 v11, 0x0

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    invoke-virtual {v2}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    const v8, 0x55d4a80

    const v6, -0x55d4a80

    const v9, 0xaba9500

    const v7, -0xaba9500

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    iget-object v11, p0, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v12

    # invokes: Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I
    invoke-static {v11, v12, v13}, Lcom/android/mms/ui/SelectMapActivity;->access$1800(Lcom/android/mms/ui/SelectMapActivity;D)I

    move-result v3

    iget-object v11, p0, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v12

    # invokes: Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I
    invoke-static {v11, v12, v13}, Lcom/android/mms/ui/SelectMapActivity;->access$1800(Lcom/android/mms/ui/SelectMapActivity;D)I

    move-result v4

    iget-object v11, p0, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/mms/ui/SelectMapActivity;->addMarker(IILjava/lang/String;)Z
    invoke-static {v11, v3, v4, v12}, Lcom/android/mms/ui/SelectMapActivity;->access$1900(Lcom/android/mms/ui/SelectMapActivity;IILjava/lang/String;)Z

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v11, p0, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # invokes: Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(IIII)Z
    invoke-static {v11, v8, v6, v9, v7}, Lcom/android/mms/ui/SelectMapActivity;->access$2000(Lcom/android/mms/ui/SelectMapActivity;IIII)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v11, p0, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/mms/ui/SelectMapActivity;->access$200(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "empty addresses"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v12}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0174

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/mms/ui/SelectMapActivity;->access$500(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    const/4 v12, 0x0

    invoke-static {v11, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    iget-object v11, p0, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/mms/ui/SelectMapActivity;->access$200(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SearchLocationTask(), Toast: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
