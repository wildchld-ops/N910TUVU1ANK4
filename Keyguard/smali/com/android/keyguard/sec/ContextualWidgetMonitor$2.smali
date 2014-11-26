.class Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;
.super Landroid/os/Handler;
.source "ContextualWidgetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/ContextualWidgetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleMissedEventUpdate()V
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$400(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleMusicWidgetUpdate(Z)V
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$500(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleMusicWidgetUpdate(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$500(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleRemoteWidgetUpdate(Z)V
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$600(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleRemoteWidgetUpdate(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$600(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleSecMusicWidgetUpdate(Z)V
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$700(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleSecMusicWidgetUpdate(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$700(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleFMRadioWidgetUpdate(Z)V
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$800(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleFMRadioWidgetUpdate(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$800(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x12c0 -> :sswitch_0
        0x12ca -> :sswitch_0
        0x12d4 -> :sswitch_1
        0x12de -> :sswitch_2
        0x12e8 -> :sswitch_3
        0x12f2 -> :sswitch_4
        0x12fc -> :sswitch_5
        0x1306 -> :sswitch_6
        0x1310 -> :sswitch_7
        0x131a -> :sswitch_8
        0x1324 -> :sswitch_0
    .end sparse-switch
.end method
