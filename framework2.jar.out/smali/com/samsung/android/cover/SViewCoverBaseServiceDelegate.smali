.class public Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;
.super Ljava/lang/Object;
.source "SViewCoverBaseServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final SAFE_DEBUG:Z

.field private static final SVIEWCOVERBASE_CLASS:Ljava/lang/String; = "com.sec.android.sviewcover.SViewCoverBaseService"

.field private static final SVIEWCOVERBASE_PACKAGE:Ljava/lang/String; = "com.sec.android.sviewcover"

.field private static final SVIEWCOVER_UPDATE_COVERSTATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SViewCoverBaseServiceDelegate"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsBound:Z

.field private mPendingCommand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

.field private mSViewCoverBaseState:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

.field private final mSViewCoverConnection:Landroid/content/ServiceConnection;

.field private mSViewCoverIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

    invoke-direct {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseState:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mIsBound:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mPendingCommand:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;-><init>(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverIntent:Landroid/content/Intent;

    const-string v1, "com.sec.android.sviewcover"

    const-string v2, "com.sec.android.sviewcover.SViewCoverBaseService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;
    .locals 1
    .param p0    # Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseState:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mPendingCommand:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onBindSViewCoverService()V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mIsBound:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    :goto_0
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mIsBound:Z

    const-string v1, "SViewCoverBaseServiceDelegate"

    const-string v2, "*** SViewCoverBase : can\'t bind to com.sec.android.sviewcover.SViewCoverBaseService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    goto :goto_0

    :cond_2
    iput-boolean v5, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mIsBound:Z

    const-string v1, "SViewCoverBaseServiceDelegate"

    const-string v2, "*** SViewCoverBase : started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-boolean v1, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SViewCoverBaseServiceDelegate"

    const-string v2, "*** SViewCoverBase : already started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSViewCoverHide()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->onSViewCoverHide()V

    :cond_0
    return-void
.end method

.method public onSViewCoverShow()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->onSViewCoverShow()V

    :cond_0
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->onSystemReady()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseState:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;->systemIsReady:Z

    goto :goto_0
.end method

.method public onUnbindSViewCoverService()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mIsBound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mIsBound:Z

    const-string v0, "SViewCoverBaseServiceDelegate"

    const-string v1, "*** SViewCoverBase : unbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SViewCoverBaseServiceDelegate"

    const-string v1, "*** SViewCoverBase : can\'t unbind. It already unbound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1    # Lcom/samsung/android/cover/CoverState;

    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mIsBound:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mPendingCommand:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
