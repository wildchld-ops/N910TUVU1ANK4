.class Lcom/voovio/sweep/SweepView$7;
.super Ljava/lang/Object;
.source "SweepView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepView;->setSweep(Lcom/voovio/sweep/Sweep;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voovio/sweep/SweepView;

.field private final synthetic val$oLastSweep:Lcom/voovio/sweep/Sweep;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Sweep;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepView$7;->this$0:Lcom/voovio/sweep/SweepView;

    iput-object p2, p0, Lcom/voovio/sweep/SweepView$7;->val$oLastSweep:Lcom/voovio/sweep/Sweep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView$7;->val$oLastSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_0

    iget-object v3, p0, Lcom/voovio/sweep/SweepView$7;->val$oLastSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_oGeometry:Lcom/voovio/sweep/VoovioGeometry;

    invoke-virtual {v3, v5}, Lcom/voovio/sweep/VoovioGeometry;->DestroyVertexBuffer(Z)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/SweepView$7;->val$oLastSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    iget v3, v2, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v3, v4, :cond_1

    invoke-virtual {v2, v5}, Lcom/voovio/sweep/Voovio;->DestroyHighResTexture(Z)V

    invoke-virtual {v2, v5}, Lcom/voovio/sweep/Voovio;->DestroyLowResTexture(Z)V

    sget v3, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v3, v2, Lcom/voovio/sweep/Voovio;->m_nState:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
