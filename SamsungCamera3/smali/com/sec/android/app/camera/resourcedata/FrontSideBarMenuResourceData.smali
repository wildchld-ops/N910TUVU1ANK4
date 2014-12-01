.class public Lcom/sec/android/app/camera/resourcedata/FrontSideBarMenuResourceData;
.super Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;
.source "FrontSideBarMenuResourceData.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 2

    const/16 v0, 0x75

    const v1, 0x7f0c0121

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;-><init>(Lcom/sec/android/app/camera/Camera;II)V

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFrontSideBarMenuOrder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public saveOrder()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getOrderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setFrontSideBarMenuOrder(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
