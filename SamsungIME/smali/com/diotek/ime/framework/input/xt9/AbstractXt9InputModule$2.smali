.class Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$2;
.super Lcom/diotek/ime/framework/input/InputModule$Timer;
.source "AbstractXt9InputModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$2;->this$0:Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/InputModule$Timer;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$2;->this$0:Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$2;->this$0:Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mAutoPeriod:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    return-void
.end method
