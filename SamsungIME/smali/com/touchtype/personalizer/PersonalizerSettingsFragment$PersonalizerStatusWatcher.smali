.class Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalizerStatusWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;)V
    .locals 0
    .param p1    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;
    .param p2    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;

    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$700(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->setPreferenceState()V

    :cond_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mWatcherHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$900(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mTimedTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$800(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
