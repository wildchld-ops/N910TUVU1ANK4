.class Lcom/android/keyguard/KeyguardGuestSelectorView$1;
.super Ljava/lang/Object;
.source "KeyguardGuestSelectorView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardGuestSelectorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPressedAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardGuestSelectorView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardGuestSelectorView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardGuestSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardGuestSelectorView$1;->mPressedAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    return-void
.end method


# virtual methods
.method public Unlock(Landroid/widget/FrameLayout;)V
    .locals 8
    .param p1    # Landroid/widget/FrameLayout;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-eqz v5, :cond_1

    move-object v0, v4

    check-cast v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    :try_start_0
    const-string v5, "KeyguardGuestSelectorView"

    const-string v6, "Switch user"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->switchUser(I)Z

    iget-object v5, p0, Lcom/android/keyguard/KeyguardGuestSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardGuestSelectorView;

    # invokes: Lcom/android/keyguard/KeyguardGuestSelectorView;->setMobileDataMultiUser()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardGuestSelectorView;->access$000(Lcom/android/keyguard/KeyguardGuestSelectorView;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "KeyguardGuestSelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t switch user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v5, "KeyguardGuestSelectorView"

    const-string v6, "View is not avatar view"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
