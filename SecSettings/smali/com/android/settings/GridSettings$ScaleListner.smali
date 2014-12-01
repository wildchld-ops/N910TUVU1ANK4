.class Lcom/android/settings/GridSettings$ScaleListner;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GridSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListner"
.end annotation


# instance fields
.field private scale:F

.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/GridSettings;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/GridSettings$ScaleListner;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/GridSettings$ScaleListner;-><init>(Lcom/android/settings/GridSettings;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget v0, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    const/high16 v0, 0x3f000000

    iget v1, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    const/high16 v2, 0x3fc00000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/GridSettings$ScaleListner;->this$0:Lcom/android/settings/GridSettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/GridSettings;->isExpanding:Z
    invoke-static {v0, v1}, Lcom/android/settings/GridSettings;->access$202(Lcom/android/settings/GridSettings;Z)Z

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    const/high16 v2, 0x3fc00000

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v2, 0x3f000000

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->this$0:Lcom/android/settings/GridSettings;

    iget-object v2, v2, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->this$0:Lcom/android/settings/GridSettings;

    iget-object v2, v2, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/grid/GridSettingsFragment;->expandAll()V

    :cond_0
    :goto_0
    const/high16 v2, 0x3f800000

    iput v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    iget-object v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->this$0:Lcom/android/settings/GridSettings;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/GridSettings;->isExpanding:Z
    invoke-static {v2, v3}, Lcom/android/settings/GridSettings;->access$202(Lcom/android/settings/GridSettings;Z)Z

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void

    :cond_1
    iget v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->scale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->this$0:Lcom/android/settings/GridSettings;

    iget-object v2, v2, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/GridSettings$ScaleListner;->this$0:Lcom/android/settings/GridSettings;

    iget-object v2, v2, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/grid/GridSettingsFragment;->collapseAll()V

    goto :goto_0
.end method
