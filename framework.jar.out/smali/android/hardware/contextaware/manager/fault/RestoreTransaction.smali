.class abstract Landroid/hardware/contextaware/manager/fault/RestoreTransaction;
.super Ljava/lang/Object;
.source "RestoreTransaction.java"


# instance fields
.field private final mContextManager:Landroid/hardware/contextaware/manager/ContextManager;


# direct methods
.method protected constructor <init>(Landroid/hardware/contextaware/manager/ContextManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/contextaware/manager/fault/RestoreTransaction;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    return-void
.end method


# virtual methods
.method protected final getContextManager()Landroid/hardware/contextaware/manager/ContextManager;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/fault/RestoreTransaction;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    return-object v0
.end method

.method protected abstract getRestoreType()Ljava/lang/String;
.end method

.method protected abstract runRestore(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;ILandroid/hardware/contextaware/manager/IContextObserver;)V
.end method
