.class Lcom/sec/android/app/camera/CommonEngine$CameraPreviewCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$CameraPreviewCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$CameraPreviewCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mIsFinishOneShotPreviewCallback:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->access$1502(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    const-string v0, "CommonEngine"

    const-string v1, "onPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
