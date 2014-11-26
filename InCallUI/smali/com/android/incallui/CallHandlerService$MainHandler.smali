.class Lcom/android/incallui/CallHandlerService$MainHandler;
.super Landroid/os/Handler;
.source "CallHandlerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallHandlerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallHandlerService;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallHandlerService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/incallui/CallHandlerService$MainHandler;->this$0:Lcom/android/incallui/CallHandlerService;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$MainHandler;->this$0:Lcom/android/incallui/CallHandlerService;

    # invokes: Lcom/android/incallui/CallHandlerService;->executeMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/incallui/CallHandlerService;->access$200(Lcom/android/incallui/CallHandlerService;Landroid/os/Message;)V

    return-void
.end method
