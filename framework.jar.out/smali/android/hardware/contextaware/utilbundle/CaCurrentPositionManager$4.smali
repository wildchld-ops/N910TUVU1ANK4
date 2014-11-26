.class Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$4;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->disable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$4;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$4;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    # invokes: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->unregisterGpsListener()V
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->access$600(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$4;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    # invokes: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->unregisterWpsListener()V
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->access$700(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V

    return-void
.end method
