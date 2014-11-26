.class Lcom/android/mms/settings/BackgroundStyle$3;
.super Ljava/lang/Object;
.source "BackgroundStyle.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/BackgroundStyle;->setGalleryData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/BackgroundStyle;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/BackgroundStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/BackgroundStyle$3;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle$3;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    # invokes: Lcom/android/mms/settings/BackgroundStyle;->setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V
    invoke-static {v0, p3, p1, p2}, Lcom/android/mms/settings/BackgroundStyle;->access$000(Lcom/android/mms/settings/BackgroundStyle;ILandroid/widget/AdapterView;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle$3;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-boolean v0, v0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle$3;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v0, v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollViewLand:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/mms/settings/BackgroundStyle$3;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v2, p0, Lcom/android/mms/settings/BackgroundStyle$3;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v2, v2, Lcom/android/mms/settings/DisplayStyleActivity;->mDisplayPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$3;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridViewLand:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/android/mms/settings/DisplayStyleActivity;->calculateScrollPosition(IIII)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle$3;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v0, v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/android/mms/settings/BackgroundStyle$3;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    sget-object v3, Lcom/android/mms/settings/DisplayStyleActivity;->mBGStyleArray:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/android/mms/settings/BackgroundStyle$3;->this$0:Lcom/android/mms/settings/BackgroundStyle;

    iget-object v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/android/mms/settings/DisplayStyleActivity;->calculateScrollPosition(IIII)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
