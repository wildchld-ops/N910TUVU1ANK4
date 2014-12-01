.class Lcom/sec/android/app/camera/Camera$55;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$55;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$55;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.directconnect"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$55;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v3, "com.sec.android.directconnect"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$55;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-boolean v2, v2, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$55;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->initNfcState()V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$55;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->hideDlg(I)V

    const/4 v1, 0x1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$55;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Lcom/sec/android/app/camera/CameraSettings;->androidBeamController(ZI)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$55;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/Camera;->setEnableDirectConnect(Z)V

    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$55;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->showRemoteViewfinderNfcConnectScreen()V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$55;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    goto :goto_0
.end method
