.class Lcom/sec/android/glview/TwGLGridList$1;
.super Landroid/os/Handler;
.source "TwGLGridList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLGridList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLGridList;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLGridList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLGridList$1;->this$0:Lcom/sec/android/glview/TwGLGridList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList$1;->this$0:Lcom/sec/android/glview/TwGLGridList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLGridList;->hideScrollBar()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
