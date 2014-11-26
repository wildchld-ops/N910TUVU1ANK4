.class Lcom/sec/android/glview/TwGLButton$1;
.super Ljava/lang/Object;
.source "TwGLButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLButton;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLButton$1;->this$0:Lcom/sec/android/glview/TwGLButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton$1;->this$0:Lcom/sec/android/glview/TwGLButton;

    # invokes: Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLButton;->access$000(Lcom/sec/android/glview/TwGLButton;Z)V

    return v1
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1    # Landroid/view/animation/Animation;

    const/4 v0, 0x0

    return v0
.end method
