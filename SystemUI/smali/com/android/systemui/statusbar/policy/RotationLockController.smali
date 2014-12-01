.class public final Lcom/android/systemui/statusbar/policy/RotationLockController;
.super Ljava/lang/Object;
.source "RotationLockController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/policy/RotationLockController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/RotationLockController$1;-><init>(Lcom/android/systemui/statusbar/policy/RotationLockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->notifyChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/RotationLockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->notifyChanged()V

    return-void
.end method

.method private notifyChanged()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;->onRotationLockStateChanged(ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addRotationLockControllerCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isRotationLockAffordanceVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRotationLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_0
    return-void
.end method

.method public setRotationLocked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
