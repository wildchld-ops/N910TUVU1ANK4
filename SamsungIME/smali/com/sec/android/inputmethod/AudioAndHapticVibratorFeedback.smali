.class public final Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;
.super Ljava/lang/Thread;
.source "AudioAndHapticVibratorFeedback.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/common/InputManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object p1, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-string v0, "AudioAndHapticVibratorFeedback"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized playSoundEffect(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$2;-><init>(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playSoundEffect(IZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$4;-><init>(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playVibrateEffect(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$3;-><init>(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playVibrateEffect(IZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$5;-><init>(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestStop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$1;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback$1;-><init>(Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AudioAndHapticVibratorFeedback"

    const-string v2, "mAudioAndHapticVibratorFeedback occur Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
