.class Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;
.super Lcom/sec/android/smartface/ISmartFaceClient$Stub;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/smartface/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartFaceClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/smartface/SmartFaceManager;


# direct methods
.method constructor <init>(Lcom/sec/android/smartface/SmartFaceManager;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-direct {p0}, Lcom/sec/android/smartface/ISmartFaceClient$Stub;-><init>()V

    const-string v0, "SmartFaceManager"

    const-string v1, "New SmartFaceClient"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onInfo(ILcom/sec/android/smartface/FaceInfo;I)V
    .locals 3
    .param p1    # I
    .param p2    # Lcom/sec/android/smartface/FaceInfo;
    .param p3    # I

    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    # getter for: Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;
    invoke-static {v1}, Lcom/sec/android/smartface/SmartFaceManager;->access$300(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    # getter for: Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;
    invoke-static {v1}, Lcom/sec/android/smartface/SmartFaceManager;->access$300(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p3, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    # getter for: Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;
    invoke-static {v1}, Lcom/sec/android/smartface/SmartFaceManager;->access$300(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "SmartFaceManager"

    const-string v2, "EventHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
