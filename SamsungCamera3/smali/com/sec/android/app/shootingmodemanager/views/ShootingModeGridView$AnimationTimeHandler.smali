.class Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;
.super Ljava/lang/Object;
.source "ShootingModeGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationTimeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v1, 0xa

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeLeft:I
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$1200(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # -= operator for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeLeft:I
    invoke-static {v0, v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$1220(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;I)I

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeLeft:I
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$1200(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$400(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeHandler:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;
    invoke-static {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$1300(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$1102(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Z)Z

    goto :goto_0
.end method
