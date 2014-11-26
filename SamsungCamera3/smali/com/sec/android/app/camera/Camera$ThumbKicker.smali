.class Lcom/sec/android/app/camera/Camera$ThumbKicker;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbKicker"
.end annotation


# static fields
.field private static final THUMB_SUSPEND_KICK_TIME:I = 0x2710


# instance fields
.field private mThumbSuspendKicker:Ljava/lang/Runnable;

.field private mThumbSuspendKickerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$ThumbKicker;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/Camera$ThumbKicker$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$ThumbKicker$1;-><init>(Lcom/sec/android/app/camera/Camera$ThumbKicker;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/Camera$ThumbKicker;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/Camera$ThumbKicker;

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/Camera$ThumbKicker;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/Camera$ThumbKicker;

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public stopKickThumbSuspend()V
    .locals 3

    const-string v1, "Camera3"

    const-string v2, "stopKickThumbSuspend"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$ThumbKicker;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public suspendThumbWork()V
    .locals 5

    const-string v1, "Camera3"

    const-string v2, "suspendThumbWork"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$ThumbKicker;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
