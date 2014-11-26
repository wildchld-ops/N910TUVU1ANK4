.class Lcom/voovio/sweep/SweepOffScreen$4;
.super Ljava/lang/Object;
.source "SweepOffScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepOffScreen;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voovio/sweep/SweepOffScreen;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepOffScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepOffScreen$4;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen$4;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v3, v3, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen$4;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    # getter for: Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;
    invoke-static {v2}, Lcom/voovio/sweep/SweepOffScreen;->access$0(Lcom/voovio/sweep/SweepOffScreen;)Lcom/voovio/sweep/ResourceManager;

    move-result-object v3

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen$4;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v2, v2, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v2, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    invoke-virtual {v3, v2}, Lcom/voovio/sweep/ResourceManager;->prepareVoovio(Lcom/voovio/sweep/Voovio;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
