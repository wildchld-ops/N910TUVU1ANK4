.class Lcom/sec/android/app/camera/subview/SubViewManager$2;
.super Landroid/view/OrientationEventListener;
.source "SubViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/subview/SubViewManager;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/subview/SubViewManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/subview/SubViewManager;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/app/camera/subview/SubViewManager$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewManager;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1    # I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const-string v1, "SubViewManager"

    const-string v2, "onOrientationChanged: orientation - unknown orientation"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/Util;->roundOrientation(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewManager$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewManager;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewManager;->mLastOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/camera/subview/SubViewManager;->access$200(Lcom/sec/android/app/camera/subview/SubViewManager;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewManager$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewManager;

    # setter for: Lcom/sec/android/app/camera/subview/SubViewManager;->mLastOrientation:I
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/subview/SubViewManager;->access$202(Lcom/sec/android/app/camera/subview/SubViewManager;I)I

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewManager$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewManager;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewManager;->rotateMenu()V

    goto :goto_0
.end method
