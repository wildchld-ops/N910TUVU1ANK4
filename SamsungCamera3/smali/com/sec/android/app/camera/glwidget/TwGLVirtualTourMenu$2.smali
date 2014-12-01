.class Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$2;
.super Ljava/lang/Object;
.source "TwGLVirtualTourMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->access$2900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
