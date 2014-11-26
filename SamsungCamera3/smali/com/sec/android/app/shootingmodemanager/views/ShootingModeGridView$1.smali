.class Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;
.super Ljava/lang/Object;
.source "ShootingModeGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScroll:I
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$000(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mX:F
    invoke-static {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$100(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mY:F
    invoke-static {v2}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$200(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScroll:I
    invoke-static {v3}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$000(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)I

    move-result v3

    # invokes: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->scroll(FFI)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$300(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;FFI)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$400(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
