.class Lcom/android/mms/ui/SelectMapActivity$5$1;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SelectMapActivity$5;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SelectMapActivity$5;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity$5;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$5;

    iput-object p2, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide v6, 0x412e848000000000L

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->val$location:Landroid/location/Location;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$5;

    iget-object v4, v4, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/SelectMapActivity;->access$200(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "onLocationChanged"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->val$location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->val$location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v3, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$5;

    iget-object v4, v4, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$5;

    iget-object v5, v5, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # invokes: Lcom/android/mms/ui/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/android/mms/ui/SelectMapActivity;->access$600(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/mms/ui/SelectMapActivity;->access$502(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$5;

    iget-object v4, v4, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # setter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v4, v3}, Lcom/android/mms/ui/SelectMapActivity;->access$302(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Lcom/google/android/maps/GeoPoint;

    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$5;

    iget-object v4, v4, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/SelectMapActivity;->access$100(Lcom/android/mms/ui/SelectMapActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
