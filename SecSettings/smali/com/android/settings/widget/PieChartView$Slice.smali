.class public Lcom/android/settings/widget/PieChartView$Slice;
.super Ljava/lang/Object;
.source "PieChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/PieChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Slice"
.end annotation


# instance fields
.field public paint:Landroid/graphics/Paint;

.field public path:Landroid/graphics/Path;

.field public pathOutline:Landroid/graphics/Path;

.field public pathSide:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/android/settings/widget/PieChartView;

.field public value:J


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/PieChartView;JI)V
    .locals 1
    .param p2    # J
    .param p4    # I

    iput-object p1, p0, Lcom/android/settings/widget/PieChartView$Slice;->this$0:Lcom/android/settings/widget/PieChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    iput-wide p2, p0, Lcom/android/settings/widget/PieChartView$Slice;->value:J

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    # invokes: Lcom/android/settings/widget/PieChartView;->buildFillPaint(ILandroid/content/res/Resources;)Landroid/graphics/Paint;
    invoke-static {p4, v0}, Lcom/android/settings/widget/PieChartView;->access$000(ILandroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView$Slice;->paint:Landroid/graphics/Paint;

    return-void
.end method
