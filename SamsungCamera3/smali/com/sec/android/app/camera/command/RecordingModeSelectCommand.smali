.class public Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "RecordingModeSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordingModeSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mCommandId:I

.field private mFastMenu:Lcom/sec/android/app/camera/MenuBase;

.field private mRecordingMode:I

.field private mSlowMenu:Lcom/sec/android/app/camera/MenuBase;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mSlowMenu:Lcom/sec/android/app/camera/MenuBase;

    iput-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mFastMenu:Lcom/sec/android/app/camera/MenuBase;

    iput-object p1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput p2, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mCommandId:I

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 9

    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x3

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecordingModeSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RecordingModeSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mCommandId:I

    sparse-switch v0, :sswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onRecordingModeMenuSelect(I)V

    iget v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mSlowMenu:Lcom/sec/android/app/camera/MenuBase;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x170e

    iget-object v3, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getBaseMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/resourcedata/SlowMotionResourceData;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v4, v5}, Lcom/sec/android/app/camera/resourcedata/SlowMotionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mZOrder:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mSlowMenu:Lcom/sec/android/app/camera/MenuBase;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mSlowMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mSlowMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0xbb8

    iget v2, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mCommandId:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->sendBroadcastChangeSettings(Lcom/sec/android/app/camera/Camera;II)V

    move v7, v8

    goto :goto_0

    :sswitch_0
    iput v7, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_1

    :sswitch_1
    iput v8, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_1

    :sswitch_2
    iput v3, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_1

    :sswitch_3
    iput v2, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_1

    :sswitch_4
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_1

    :sswitch_5
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_1

    :sswitch_6
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mFastMenu:Lcom/sec/android/app/camera/MenuBase;

    if-nez v0, :cond_5

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x170f

    iget-object v3, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getBaseMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/resourcedata/FastMotionResourceData;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v4, v5}, Lcom/sec/android/app/camera/resourcedata/FastMotionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mZOrder:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mFastMenu:Lcom/sec/android/app/camera/MenuBase;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mFastMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mFastMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mZOrder:I

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0xc1c -> :sswitch_0
        0xc1d -> :sswitch_1
        0xc20 -> :sswitch_4
        0xc21 -> :sswitch_5
        0xc22 -> :sswitch_6
        0x170e -> :sswitch_2
        0x170f -> :sswitch_3
    .end sparse-switch
.end method
