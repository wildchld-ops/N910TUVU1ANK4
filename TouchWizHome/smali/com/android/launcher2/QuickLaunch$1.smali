.class Lcom/android/launcher2/QuickLaunch$1;
.super Ljava/lang/Object;
.source "QuickLaunch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/QuickLaunch;->resetLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickLaunch;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickLaunch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickLaunch$1;->this$0:Lcom/android/launcher2/QuickLaunch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/QuickLaunch$1;->this$0:Lcom/android/launcher2/QuickLaunch;

    # getter for: Lcom/android/launcher2/QuickLaunch;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v1}, Lcom/android/launcher2/QuickLaunch;->access$000(Lcom/android/launcher2/QuickLaunch;)Lcom/android/launcher2/HomeView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/QuickLaunch$1;->this$0:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/launcher2/QuickLaunch$1$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/QuickLaunch$1$1;-><init>(Lcom/android/launcher2/QuickLaunch$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/QuickLaunch$1;->this$0:Lcom/android/launcher2/QuickLaunch;

    # getter for: Lcom/android/launcher2/QuickLaunch;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v1}, Lcom/android/launcher2/QuickLaunch;->access$000(Lcom/android/launcher2/QuickLaunch;)Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/HomeView;->onClickAllAppsButton(Landroid/view/View;)V

    :cond_1
    return-void
.end method
