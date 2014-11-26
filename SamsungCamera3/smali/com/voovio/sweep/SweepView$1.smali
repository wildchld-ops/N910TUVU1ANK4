.class Lcom/voovio/sweep/SweepView$1;
.super Ljava/lang/Object;
.source "SweepView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepView;-><init>(Landroid/content/Context;Lcom/voovio/sweep/ImageProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voovio/sweep/SweepView;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepView;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepView$1;->this$0:Lcom/voovio/sweep/SweepView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/voovio/sweep/SweepView$1;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$0(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/SweepView$1;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_oSweepViewListener:Lcom/voovio/sweep/SweepView$OnSweepViewListener;
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$0(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/SweepView$OnSweepViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$1;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_nCurrentPosition:I
    invoke-static {v1}, Lcom/voovio/sweep/SweepView;->access$1(Lcom/voovio/sweep/SweepView;)I

    move-result v1

    iget-object v2, p0, Lcom/voovio/sweep/SweepView$1;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_nMaxPosition:I
    invoke-static {v2}, Lcom/voovio/sweep/SweepView;->access$2(Lcom/voovio/sweep/SweepView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/voovio/sweep/SweepView$OnSweepViewListener;->onPositionChanged(II)V

    :cond_0
    return-void
.end method
