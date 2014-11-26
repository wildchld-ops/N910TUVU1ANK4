.class public abstract Landroid/hardware/camera2/CameraDevice$CaptureListener;
.super Ljava/lang/Object;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CaptureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraDevice;
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
    .param p3    # Landroid/hardware/camera2/CaptureResult;

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraDevice;
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
    .param p3    # Landroid/hardware/camera2/CaptureFailure;

    return-void
.end method

.method public onCapturePartial(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraDevice;
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
    .param p3    # Landroid/hardware/camera2/CaptureResult;

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;II)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraDevice;
    .param p2    # I
    .param p3    # I

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraDevice;
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
    .param p3    # J

    return-void
.end method
