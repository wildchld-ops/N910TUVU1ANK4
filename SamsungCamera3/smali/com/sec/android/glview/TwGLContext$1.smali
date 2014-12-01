.class Lcom/sec/android/glview/TwGLContext$1;
.super Landroid/database/ContentObserver;
.source "TwGLContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLContext;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLContext;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    # invokes: Lcom/sec/android/glview/TwGLContext;->updateTouchExplorationEnabled()V
    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->access$000(Lcom/sec/android/glview/TwGLContext;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    # invokes: Lcom/sec/android/glview/TwGLContext;->updateTouchExplorationEnabled()V
    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->access$000(Lcom/sec/android/glview/TwGLContext;)V

    return-void
.end method
