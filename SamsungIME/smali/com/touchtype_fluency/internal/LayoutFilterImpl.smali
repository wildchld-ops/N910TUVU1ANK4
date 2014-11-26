.class public Lcom/touchtype_fluency/internal/LayoutFilterImpl;
.super Ljava/lang/Object;
.source "LayoutFilterImpl.java"

# interfaces
.implements Lcom/touchtype_fluency/LayoutFilter;


# instance fields
.field private peer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/touchtype_fluency/internal/LayoutFilterImpl;->peer:J

    return-void
.end method

.method public static native initIDs()V
.end method


# virtual methods
.method public native clear()V
.end method

.method public native dispose()V
.end method

.method public native set(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/CodepointRange;",
            ">;)V"
        }
    .end annotation
.end method
