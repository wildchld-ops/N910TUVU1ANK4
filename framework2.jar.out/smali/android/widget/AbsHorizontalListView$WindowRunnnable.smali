.class Landroid/widget/AbsHorizontalListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$WindowRunnnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView$WindowRunnnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$WindowRunnnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/view/View;->getWindowAttachCount()I
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$400(Landroid/widget/AbsHorizontalListView;)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsHorizontalListView$WindowRunnnable;->mOriginalAttachCount:I

    return-void
.end method

.method public sameWindow()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$WindowRunnnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/view/View;->getWindowAttachCount()I
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$500(Landroid/widget/AbsHorizontalListView;)I

    move-result v0

    iget v1, p0, Landroid/widget/AbsHorizontalListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
