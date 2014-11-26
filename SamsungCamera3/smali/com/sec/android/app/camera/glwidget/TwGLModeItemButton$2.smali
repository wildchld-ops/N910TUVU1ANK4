.class Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$2;
.super Ljava/lang/Object;
.source "TwGLModeItemButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setDrawHighlight(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    return-void
.end method
