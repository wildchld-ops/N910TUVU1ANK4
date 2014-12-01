.class Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2$1;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"

# interfaces
.implements Lcom/android/launcher2/KeyboardDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2$1;->this$1:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 0

    return-void
.end method

.method public confirmed(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2$1;->this$1:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2;->this$0:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;
    invoke-static {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->access$300(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;)Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2$1;->this$1:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2;

    iget v2, v2, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2;->val$textviewidentifier:I

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onKeyboardCompleted(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SurfaceWidgetConnection"

    const-string v2, "Error in surface widget"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2$1;->this$1:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$2;->val$widgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/SurfaceWidgetView;->surfaceWidgetCrashed(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
