.class public Lcom/voovio/sweep/Sweep$NodeInfo;
.super Ljava/lang/Object;
.source "Sweep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voovio/sweep/Sweep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeInfo"
.end annotation


# static fields
.field public static final NODE_TYPE_NORMAL:I = 0x0

.field public static final NODE_TYPE_TURN:I = 0x1


# instance fields
.field public m_fAngle:F

.field public m_fLength:F

.field public m_nType:I

.field public m_ptCenter:Lcom/voovio/geometry/Point;

.field public m_ptNormal:Lcom/voovio/geometry/Point;

.field final synthetic this$0:Lcom/voovio/sweep/Sweep;


# direct methods
.method public constructor <init>(Lcom/voovio/sweep/Sweep;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/voovio/sweep/Sweep$NodeInfo;->this$0:Lcom/voovio/sweep/Sweep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/Sweep$NodeInfo;->m_nType:I

    iput v2, p0, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fAngle:F

    iput v2, p0, Lcom/voovio/sweep/Sweep$NodeInfo;->m_fLength:F

    iput-object v1, p0, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    iput-object v1, p0, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    new-instance v0, Lcom/voovio/geometry/Point;

    invoke-direct {v0}, Lcom/voovio/geometry/Point;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptCenter:Lcom/voovio/geometry/Point;

    new-instance v0, Lcom/voovio/geometry/Point;

    const/high16 v1, -0x40800000

    invoke-direct {v0, v2, v1}, Lcom/voovio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/voovio/sweep/Sweep$NodeInfo;->m_ptNormal:Lcom/voovio/geometry/Point;

    return-void
.end method
