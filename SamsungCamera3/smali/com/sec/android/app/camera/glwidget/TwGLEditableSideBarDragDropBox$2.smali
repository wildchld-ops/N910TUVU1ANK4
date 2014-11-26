.class Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$2;
.super Ljava/lang/Object;
.source "TwGLEditableSideBarDragDropBox.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;Lcom/sec/android/glview/TwGLView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .param p1    # Landroid/view/animation/Animation;

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mRelocating:Z
    invoke-static {v2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->access$202(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDroppability(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetClipRect()V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1    # Landroid/view/animation/Animation;

    const/4 v0, 0x0

    return v0
.end method
