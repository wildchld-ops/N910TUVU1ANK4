.class Lcom/sec/android/app/camera/Camera$144;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->showAquaShotKeySelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$144;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$144;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mShowAuqaKeySelectDialog:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$7302(Lcom/sec/android/app/camera/Camera;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$144;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setVolumeKeyAs(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$144;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$144;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$144;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateRemainCounter()V

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$144;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mAquaShotKeySelectDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$7400(Lcom/sec/android/app/camera/Camera;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$144;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mAquaShotKeySelectDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$7402(Lcom/sec/android/app/camera/Camera;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
