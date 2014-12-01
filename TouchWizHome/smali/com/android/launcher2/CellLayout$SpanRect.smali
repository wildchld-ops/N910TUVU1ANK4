.class Lcom/android/launcher2/CellLayout$SpanRect;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpanRect"
.end annotation


# instance fields
.field public final height:I

.field public final size:Ljava/lang/Integer;

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher2/CellLayout$SpanRect;->width:I

    iput p2, p0, Lcom/android/launcher2/CellLayout$SpanRect;->height:I

    mul-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$SpanRect;->size:Ljava/lang/Integer;

    return-void
.end method
