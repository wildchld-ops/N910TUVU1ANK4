.class final Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DragInputEventReceiver"
.end annotation


# instance fields
.field private final USE_VSYNC:Z

.field mDragInterpolator:Lcom/android/server/wm/WindowManagerService$DragInterpolator;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 2
    .param p2    # Landroid/view/InputChannel;
    .param p3    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    const-string v0, "debug.choreographer.vsync"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->USE_VSYNC:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->USE_VSYNC:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;

    invoke-direct {v0, p1}, Lcom/android/server/wm/WindowManagerService$DragInterpolator;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mDragInterpolator:Lcom/android/server/wm/WindowManagerService$DragInterpolator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 10
    .param p1    # Landroid/view/InputEvent;

    const/4 v4, 0x0

    :try_start_0
    instance-of v8, p1, Landroid/view/MotionEvent;

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v8, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v5, v0

    const/4 v2, 0x0

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-eqz v2, :cond_1

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mDragInterpolator:Lcom/android/server/wm/WindowManagerService$DragInterpolator;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mDragInterpolator:Lcom/android/server/wm/WindowManagerService$DragInterpolator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->finish()V

    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8}, Lcom/android/server/wm/DragState;->endDragLw()V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_1
    const/4 v4, 0x1

    :cond_2
    invoke-virtual {p0, p1, v4}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :goto_2
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_1
    :try_start_2
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mDragInterpolator:Lcom/android/server/wm/WindowManagerService$DragInterpolator;

    if-eqz v8, :cond_4

    if-nez v3, :cond_4

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mDragInterpolator:Lcom/android/server/wm/WindowManagerService$DragInterpolator;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->handleEvent(FF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v8, "WindowManager"

    const-string v9, "Exception caught by drag handleMotion"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p0, p1, v4}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_2

    :cond_4
    :try_start_4
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v6, v7, v3}, Lcom/android/server/wm/DragState;->notifyMoveLw(FFZ)V

    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v8

    invoke-virtual {p0, p1, v4}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v8

    :pswitch_2
    :try_start_7
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mDragInterpolator:Lcom/android/server/wm/WindowManagerService$DragInterpolator;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mDragInterpolator:Lcom/android/server/wm/WindowManagerService$DragInterpolator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->finish()V

    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v6, v7, v3}, Lcom/android/server/wm/DragState;->notifyDropLw(FFZ)Z

    move-result v2

    monitor-exit v9

    goto :goto_1

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :pswitch_3
    const/4 v2, 0x1

    goto :goto_1

    :catchall_3
    move-exception v8

    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v8
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method