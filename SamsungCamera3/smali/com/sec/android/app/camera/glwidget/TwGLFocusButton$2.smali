.class Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$2;
.super Ljava/lang/Object;
.source "TwGLFocusButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;-><init>(Lcom/sec/android/app/camera/Camera;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/16 v1, 0xa

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$302(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;I)I

    return-void
.end method
