.class public Lcom/android/incallui/AccessoryEventHandler;
.super Ljava/lang/Object;
.source "AccessoryEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AccessoryEventHandler$Listener;
    }
.end annotation


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverIntentReceiver:Landroid/content/BroadcastReceiver;

.field mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field mInCallPresenter:Lcom/android/incallui/InCallPresenter;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/AccessoryEventHandler$Listener;",
            ">;"
        }
    .end annotation
.end field

.field mScover:Lcom/samsung/android/sdk/cover/Scover;

.field mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mListeners:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/incallui/AccessoryEventHandler;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Lcom/android/incallui/AccessoryEventHandler;->initializeCover()V

    invoke-direct {p0}, Lcom/android/incallui/AccessoryEventHandler;->initializeSideSyncCallForward()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/AccessoryEventHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/AccessoryEventHandler;->notifyListenersOfChange(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/AccessoryEventHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/AccessoryEventHandler;->notifyListenersOfCallForwardStateChange(Z)V

    return-void
.end method

.method private initializeCover()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v2}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v2, Lcom/android/incallui/AccessoryEventHandler$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/AccessoryEventHandler$1;-><init>(Lcom/android/incallui/AccessoryEventHandler;)V

    iput-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/android/incallui/AccessoryEventHandler;->mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/incallui/AccessoryEventHandler$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/AccessoryEventHandler$2;-><init>(Lcom/android/incallui/AccessoryEventHandler;)V

    iput-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverIntentReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.cover.OPEN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private initializeSideSyncCallForward()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/AccessoryEventHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/incallui/AccessoryEventHandler$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/AccessoryEventHandler$3;-><init>(Lcom/android/incallui/AccessoryEventHandler;)V

    iput-object v1, p0, Lcom/android/incallui/AccessoryEventHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.sidesync.common.CALLFORWARD_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private notifyListenersOfCallForwardStateChange(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AccessoryEventHandler$Listener;

    invoke-interface {v1, p1}, Lcom/android/incallui/AccessoryEventHandler$Listener;->onSideSyncCallForwardStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyListenersOfChange(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AccessoryEventHandler$Listener;

    invoke-interface {v1, p1}, Lcom/android/incallui/AccessoryEventHandler$Listener;->onCoverStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/AccessoryEventHandler$Listener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method public removeListener(Lcom/android/incallui/AccessoryEventHandler$Listener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public tearDown()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/incallui/AccessoryEventHandler;->mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AccessoryEventHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method
