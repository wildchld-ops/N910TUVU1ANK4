.class Lcom/sec/android/app/camera/glwidget/TwGLToast$3;
.super Ljava/lang/Object;
.source "TwGLToast.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLToast;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLToast;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLToast;)Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLToast;)Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;->onToastDisplay(Lcom/sec/android/app/camera/glwidget/TwGLToast;I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1    # Landroid/view/animation/Animation;

    const/4 v0, 0x0

    return v0
.end method
