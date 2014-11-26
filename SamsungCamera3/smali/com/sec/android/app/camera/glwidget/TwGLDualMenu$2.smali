.class Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$2;
.super Landroid/view/OrientationEventListener;
.source "TwGLDualMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1    # I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->roundOrientation(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setOrientationChanged(IZ)V

    goto :goto_0
.end method
