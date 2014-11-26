.class Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$3;
.super Ljava/lang/Object;
.source "TwGLItemEffectThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->refreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    # getter for: Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    # getter for: Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnFocusListener;->onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
