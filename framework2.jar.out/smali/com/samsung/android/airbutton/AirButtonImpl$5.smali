.class Lcom/samsung/android/airbutton/AirButtonImpl$5;
.super Ljava/lang/Object;
.source "AirButtonImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/AirButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/AirButtonImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$5;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$5;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$100(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$5;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$100(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v1, v5

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl$5;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    iget v3, v3, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    sub-int v0, v2, v3

    const-string v2, "AirButtonImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "run = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", adjusted= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$5;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$800(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$5;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$800(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl$5;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$100(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->reAdjustViewYPosition(II)V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
