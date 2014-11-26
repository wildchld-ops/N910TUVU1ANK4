.class Lcom/sec/android/glview/TwGLContext$2;
.super Landroid/view/OrientationEventListener;
.source "TwGLContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/glview/TwGLContext;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLContext;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLContext;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext$2;->this$0:Lcom/sec/android/glview/TwGLContext;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const-string v1, "TwGLContext"

    const-string v2, "onOrientationChanged - ORIENTATION_UNKNOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/sec/android/glview/TwGLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    # getter for: Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->access$100()I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$2;->this$0:Lcom/sec/android/glview/TwGLContext;

    # getter for: Lcom/sec/android/glview/TwGLContext;->mNeedToUpdateOrientation:Z
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->access$200(Lcom/sec/android/glview/TwGLContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$2;->this$0:Lcom/sec/android/glview/TwGLContext;

    # getter for: Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->access$300(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$2;->this$0:Lcom/sec/android/glview/TwGLContext;

    # getter for: Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->access$400(Lcom/sec/android/glview/TwGLContext;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$2;->this$0:Lcom/sec/android/glview/TwGLContext;

    # getter for: Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->access$300(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    :goto_1
    const-string v1, "TwGLContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOrientationChanged - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext$2;->this$0:Lcom/sec/android/glview/TwGLContext;

    # getter for: Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->access$400(Lcom/sec/android/glview/TwGLContext;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$2;->this$0:Lcom/sec/android/glview/TwGLContext;

    # setter for: Lcom/sec/android/glview/TwGLContext;->mNeedToUpdateOrientation:Z
    invoke-static {v1, v4}, Lcom/sec/android/glview/TwGLContext;->access$202(Lcom/sec/android/glview/TwGLContext;Z)Z

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$2;->this$0:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    :cond_3
    # setter for: Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I
    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->access$102(I)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$2;->this$0:Lcom/sec/android/glview/TwGLContext;

    # getter for: Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->access$300(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    goto :goto_1
.end method
