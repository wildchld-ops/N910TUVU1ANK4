.class public abstract Lcom/sec/android/app/camera/command/MenuCommand;
.super Ljava/lang/Object;
.source "MenuCommand.java"


# instance fields
.field protected mAnchor:Lcom/sec/android/glview/TwGLImage;

.field protected mLaunchType:I

.field protected mLaunchX:F

.field protected mLaunchY:F

.field protected mZOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    return-void
.end method


# virtual methods
.method public abstract execute()Z
.end method

.method public sendBroadcastChangeSettings(Lcom/sec/android/app/camera/Camera;II)V
    .locals 2
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # I
    .param p3    # I

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/sec/android/app/camera/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/Util;->broadcastSettings(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 2
    .param p1    # Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    goto :goto_0
.end method

.method public setLaunchPosition(FF)V
    .locals 0
    .param p1    # F
    .param p2    # F

    iput p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mLaunchX:F

    iput p2, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mLaunchY:F

    return-void
.end method

.method public setLaunchType(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mLaunchType:I

    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    return-void
.end method
