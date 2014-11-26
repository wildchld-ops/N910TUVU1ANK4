.class Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$2;
.super Landroid/os/Handler;
.source "ItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mParentShootingModeGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->access$000(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->isBusy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    # invokes: Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->populateViews()V
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->access$100(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$2;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->access$200(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
