.class public Lcom/android/incallui/vt/PreviewEffectState;
.super Ljava/lang/Object;
.source "PreviewEffectState.java"


# static fields
.field private static sInstance:Lcom/android/incallui/vt/PreviewEffectState;


# instance fields
.field private mIsDualCameraEnabled:Z

.field private mIsShowingBackground:Z

.field private mIsShowingCartoonView:Z

.field private mIsShowingEffect:Z

.field private mIsShowingEmotion:Z

.field private mIsShowingTheme:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingEmotion:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingTheme:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingBackground:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingEffect:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingCartoonView:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsDualCameraEnabled:Z

    const-string v0, "PreviewEffectState constructor..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/vt/PreviewEffectState;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static getInstance()Lcom/android/incallui/vt/PreviewEffectState;
    .locals 4

    const-class v1, Lcom/android/incallui/vt/PreviewEffectState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/vt/PreviewEffectState;->sInstance:Lcom/android/incallui/vt/PreviewEffectState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/vt/PreviewEffectState;

    invoke-direct {v0}, Lcom/android/incallui/vt/PreviewEffectState;-><init>()V

    sput-object v0, Lcom/android/incallui/vt/PreviewEffectState;->sInstance:Lcom/android/incallui/vt/PreviewEffectState;

    :goto_0
    sget-object v0, Lcom/android/incallui/vt/PreviewEffectState;->sInstance:Lcom/android/incallui/vt/PreviewEffectState;

    monitor-exit v1

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/vt/PreviewEffectState;->sInstance:Lcom/android/incallui/vt/PreviewEffectState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/vt/PreviewEffectState;->sInstance:Lcom/android/incallui/vt/PreviewEffectState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/incallui/vt/PreviewEffectState;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "PreviewEffectState"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "PreviewEffectState"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isDualCameraEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsDualCameraEnabled:Z

    return v0
.end method

.method public isShowingCartoonView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingCartoonView:Z

    return v0
.end method

.method public isShowingEffect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingEffect:Z

    return v0
.end method

.method public isShowingEmotion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingEmotion:Z

    return v0
.end method

.method public isShowingTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingTheme:Z

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingEmotion:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingTheme:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingBackground:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingEffect:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingCartoonView:Z

    iput-boolean v0, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsDualCameraEnabled:Z

    return-void
.end method

.method protected setDualCameraEnable(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsDualCameraEnabled:Z

    return-void
.end method

.method protected setShowBackground(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingBackground:Z

    return-void
.end method

.method protected setShowEffect(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingEffect:Z

    return-void
.end method

.method protected setShowEmotion(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingEmotion:Z

    return-void
.end method

.method protected setShowTheme(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/vt/PreviewEffectState;->mIsShowingTheme:Z

    return-void
.end method
