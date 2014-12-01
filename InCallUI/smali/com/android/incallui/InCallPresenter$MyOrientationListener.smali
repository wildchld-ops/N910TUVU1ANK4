.class Lcom/android/incallui/InCallPresenter$MyOrientationListener;
.super Lcom/android/internal/policy/impl/WindowOrientationListener;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$MyOrientationListener;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/incallui/InCallPresenter;->access$2300(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$MyOrientationListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[orientationListener] onProposedRotationChanged : enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$MyOrientationListener;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mOrientationListener:Lcom/android/incallui/InCallPresenter$MyOrientationListener;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$2400(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallPresenter$MyOrientationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$MyOrientationListener;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mOrientationListener:Lcom/android/incallui/InCallPresenter$MyOrientationListener;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$2400(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallPresenter$MyOrientationListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;->disable()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter$MyOrientationListener;->setCameraOrientation(I)V

    goto :goto_0
.end method

.method public setCameraOrientation(I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter$MyOrientationListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[orientationListener] setCurrentOrientation rotation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-nez v0, :cond_2

    const-string v4, "volte_cvo_feature"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "[orientationListener] AutoRotation is false"

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v1, p1, v2}, Lcom/android/incallui/vt/VideoCallManager;->setCurrentOrientation(IZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3}, Lcom/android/incallui/vt/VideoCallManager;->setCurrentOrientation(IZ)V

    goto :goto_1
.end method
