.class Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$2;
.super Ljava/lang/Object;
.source "TwGLCameraBaseIndicators.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideShootingModeIndicator()V
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)V

    return-void
.end method
