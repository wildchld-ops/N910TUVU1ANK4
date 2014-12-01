.class public Lcom/android/systemui/statusbar/policy/CurrentUserTracker;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserTracker.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->mCurrentUserId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->mCurrentUserId:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->mCurrentUserId:I

    :cond_0
    return-void
.end method

.method public stopTracking()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
