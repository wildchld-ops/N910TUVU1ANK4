.class Lcom/android/keyguard/sec/ContextualEventManager$1;
.super Landroid/os/Handler;
.source "ContextualEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/ContextualEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/ContextualEventManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/ContextualEventManager;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualEventManager$1;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "ContextualEventManager"

    const-string v2, "not defined message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager$1;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    const-string v1, "requestClass"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "views"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    # invokes: Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateMissedAdded(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    invoke-static {v2, v3, v1}, Lcom/android/keyguard/sec/ContextualEventManager;->access$000(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventManager$1;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    const-string v2, "requestClass"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateMissedEventRemoved(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/ContextualEventManager;->access$100(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager$1;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    const-string v1, "requestClass"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "views"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    # invokes: Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateEventAdded(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    invoke-static {v2, v3, v1}, Lcom/android/keyguard/sec/ContextualEventManager;->access$200(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventManager$1;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    const-string v2, "requestClass"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateEventRemoved(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/ContextualEventManager;->access$300(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager$1;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    const-string v1, "requestClass"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "views"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    # invokes: Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    invoke-static {v2, v3, v1}, Lcom/android/keyguard/sec/ContextualEventManager;->access$400(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventManager$1;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    const-string v2, "requestClass"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isFlightMode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    # invokes: Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateFlightMode(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/keyguard/sec/ContextualEventManager;->access$500(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x132f
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
