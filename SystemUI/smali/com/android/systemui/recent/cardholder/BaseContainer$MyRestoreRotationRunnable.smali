.class Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/cardholder/BaseContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRestoreRotationRunnable"
.end annotation


# instance fields
.field global_timeout:I

.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

.field timeout:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->timeout:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->global_timeout:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->init()Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;

    return-void
.end method


# virtual methods
.method init()Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;
    .locals 1

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->global_timeout:I

    return-object p0
.end method

.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v3, v3, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "BaseContainer"

    const-string v4, "can\'t start MyRestoreRotationRunnable"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->global_timeout:I

    iget v4, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->timeout:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->global_timeout:I

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v3, v3, Lcom/android/systemui/recent/cardholder/BaseContainer;->rotated_angle:F

    iget v4, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->global_timeout:I

    iget v5, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->timeout:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    div-float v0, v3, v4

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v4, v3, Lcom/android/systemui/recent/cardholder/BaseContainer;->rotated_angle:F

    sub-float/2addr v4, v0

    iput v4, v3, Lcom/android/systemui/recent/cardholder/BaseContainer;->rotated_angle:F

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v3, v3, Lcom/android/systemui/recent/cardholder/BaseContainer;->rotated_angle:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iput v6, v3, Lcom/android/systemui/recent/cardholder/BaseContainer;->rotated_angle:F

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v3, v3, Lcom/android/systemui/recent/cardholder/BaseContainer;->topStackIndex:I

    add-int/lit8 v1, v3, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v3, v3, Lcom/android/systemui/recent/cardholder/BaseContainer;->bottomStackIndex:I

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v3, v3, Lcom/android/systemui/recent/cardholder/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v4, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v4, v4, Lcom/android/systemui/recent/cardholder/BaseContainer;->rotated_angle:F

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/recent/cardholder/BaseContainer;->setRotation(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v3, v3, Lcom/android/systemui/recent/cardholder/BaseContainer;->rotated_angle:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v4, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$MyRestoreRotationRunnable;->timeout:I

    int-to-long v4, v4

    invoke-virtual {v3, p0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
