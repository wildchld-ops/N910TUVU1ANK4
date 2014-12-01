.class public Lcom/sec/android/app/camera/command/SceneModeSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "SceneModeSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneModeSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mSceneMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mSceneMode:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mSceneMode:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mSceneMode:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mSceneMode:I

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mSceneMode:I

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mSceneMode:I

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mSceneMode:I

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mSceneMode:I

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mSceneMode:I

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mSceneMode:I

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mSceneMode:I

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mSceneMode:I

    goto :goto_0

    :pswitch_c
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mSceneMode:I

    goto :goto_0

    :pswitch_d
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mSceneMode:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SceneModeSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SceneModeSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SceneModeSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getDepth()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;->mSceneMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onSceneModeMenuSelect(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method
