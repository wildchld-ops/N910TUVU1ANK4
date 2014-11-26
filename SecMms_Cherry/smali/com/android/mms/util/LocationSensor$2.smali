.class Lcom/android/mms/util/LocationSensor$2;
.super Ljava/lang/Object;
.source "LocationSensor.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/LocationSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/LocationSensor;


# direct methods
.method constructor <init>(Lcom/android/mms/util/LocationSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/LocationSensor$2;->this$0:Lcom/android/mms/util/LocationSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1    # Landroid/location/Location;

    iget-object v1, p0, Lcom/android/mms/util/LocationSensor$2;->this$0:Lcom/android/mms/util/LocationSensor;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/mms/util/LocationSensor;->mIsActiveNetworkProvider:Z
    invoke-static {v1, v0}, Lcom/android/mms/util/LocationSensor;->access$102(Lcom/android/mms/util/LocationSensor;Z)Z

    const-string v0, "LocationSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged Network Location has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/LocationSensor$2;->this$0:Lcom/android/mms/util/LocationSensor;

    # getter for: Lcom/android/mms/util/LocationSensor;->mIsActiveNetworkProvider:Z
    invoke-static {v2}, Lcom/android/mms/util/LocationSensor;->access$100(Lcom/android/mms/util/LocationSensor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v0, "LocationSensor"

    const-string v1, "onProviderDisabled Network"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/LocationSensor$2;->this$0:Lcom/android/mms/util/LocationSensor;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/util/LocationSensor;->mIsActiveNetworkProvider:Z
    invoke-static {v0, v1}, Lcom/android/mms/util/LocationSensor;->access$102(Lcom/android/mms/util/LocationSensor;Z)Z

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Landroid/os/Bundle;

    return-void
.end method
