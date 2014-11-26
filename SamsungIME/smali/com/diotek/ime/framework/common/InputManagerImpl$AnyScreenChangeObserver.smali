.class Lcom/diotek/ime/framework/common/InputManagerImpl$AnyScreenChangeObserver;
.super Landroid/database/ContentObserver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnyScreenChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$AnyScreenChangeObserver;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$AnyScreenChangeObserver;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->readAnyScreenRunning()V
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$6800(Lcom/diotek/ime/framework/common/InputManagerImpl;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$AnyScreenChangeObserver;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$AnyScreenChangeObserver;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getAnyScreenRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->changeOneHandMode(Z)V
    invoke-static {v1, v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$6900(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
