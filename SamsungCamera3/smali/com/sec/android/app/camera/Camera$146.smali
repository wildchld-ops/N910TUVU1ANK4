.class Lcom/sec/android/app/camera/Camera$146;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->showAquaShotHelpDialog()V
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

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$146;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$146;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mAquaShotHelpDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$7500(Lcom/sec/android/app/camera/Camera;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$146;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mAquaShotHelpDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$7500(Lcom/sec/android/app/camera/Camera;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$146;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mAquaShotHelpDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$7502(Lcom/sec/android/app/camera/Camera;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method
