.class public abstract Lcom/android/incallui/BaseFragmentManager;
.super Ljava/lang/Object;
.source "BaseFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/incallui/BaseFragment",
        "<**>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field protected mFragmentType:Ljava/lang/Enum;

.field mInCallActivity:Lcom/android/incallui/InCallActivity;

.field protected mOrientation:I

.field protected mTestFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation
.end field

.field mTestHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/BaseFragmentManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/BaseFragmentManager$1;-><init>(Lcom/android/incallui/BaseFragmentManager;)V

    iput-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mTestHandler:Landroid/os/Handler;

    const-string v0, "BaseFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragmentManager;->checkAndSet(Z)Lcom/android/incallui/BaseFragment;

    return-void
.end method

.method private removeFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation
.end method

.method protected abstract getFragment()Lcom/android/incallui/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "BaseFragmentManager"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected log(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    invoke-static {p1, p2, p3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Presenter;->onActivityDestroy()V

    :cond_0
    return-void
.end method

.method protected removeCurrentFragment()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/BaseFragmentManager;->removeFragment(Lcom/android/incallui/BaseFragment;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragmentManager;->setCurrentFragment(Lcom/android/incallui/BaseFragment;)V

    :cond_0
    return-void
.end method

.method protected abstract setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract setFragment(Ljava/lang/Enum;Z)V
.end method

.method protected declared-synchronized setFragmentInternal(ILandroid/app/Fragment;Z)V
    .locals 3
    .param p1    # I
    .param p2    # Landroid/app/Fragment;
    .param p3    # Z

    monitor-enter p0

    :try_start_0
    const-string v1, "addFragment......"

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-nez p3, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragmentManager;->getFragment()Lcom/android/incallui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_4
    check-cast p2, Lcom/android/incallui/BaseFragment;

    invoke-virtual {p0, p2}, Lcom/android/incallui/BaseFragmentManager;->setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
