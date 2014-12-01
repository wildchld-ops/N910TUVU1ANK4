.class final Lcom/sec/android/app/camera/QuickShot$ShutterCallback;
.super Ljava/lang/Object;
.source "QuickShot.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/QuickShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/QuickShot;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/QuickShot;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/QuickShot$ShutterCallback;->this$0:Lcom/sec/android/app/camera/QuickShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/QuickShot;Lcom/sec/android/app/camera/QuickShot$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/QuickShot$ShutterCallback;-><init>(Lcom/sec/android/app/camera/QuickShot;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 3

    const-string v1, "QuickShot"

    const-string v2, "ShutterCallback.onShutter"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/QuickShot$ShutterCallback;->this$0:Lcom/sec/android/app/camera/QuickShot;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
