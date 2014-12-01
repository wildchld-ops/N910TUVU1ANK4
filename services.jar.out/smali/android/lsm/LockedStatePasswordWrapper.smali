.class public Landroid/lsm/LockedStatePasswordWrapper;
.super Ljava/lang/Object;
.source "LockedStatePasswordWrapper.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "LSManager"

.field private static final TAG:Ljava/lang/String; = "LSManager.LockedStatePasswordWrapper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private m_API:Landroid/os/storage/sensitive/SDServiceAPI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/lsm/LockedStatePasswordWrapper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    iput-object p1, p0, Landroid/lsm/LockedStatePasswordWrapper;->mContext:Landroid/content/Context;

    const-string v0, "LSManager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/sensitive/SDServiceAPI$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/sensitive/SDServiceAPI;

    move-result-object v0

    iput-object v0, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    iget-object v0, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    if-nez v0, :cond_0

    const-string v0, "LSManager.LockedStatePasswordWrapper"

    const-string v1, "Unable to get SDServiceAPI instance."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentUserID()I
    .locals 2

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/lsm/LockedStatePasswordWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    return v1
.end method

.method public setLocked()I
    .locals 3

    iget-object v1, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    invoke-interface {v1}, Landroid/os/storage/sensitive/SDServiceAPI;->setLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LSManager.LockedStatePasswordWrapper"

    const-string v2, "Unable to communicate with LSManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setPassword(Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    if-nez v2, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/storage/sensitive/SDServiceAPI;->setPassword([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LSManager.LockedStatePasswordWrapper"

    const-string v3, "Unable to communicate with LSManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-interface {v2, v3}, Landroid/os/storage/sensitive/SDServiceAPI;->setPassword([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
