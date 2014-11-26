.class Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;
.super Ljava/lang/Object;
.source "AbsAirButtonView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/view/AbsAirButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AbsAirButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onHoverEnter(I)V

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    sget v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mUspLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    iget-object v0, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    # invokes: Lcom/samsung/android/airbutton/view/AbsAirButtonView;->isEventIncludedView(ILandroid/view/MotionEvent;)Z
    invoke-static {v0, v1, p2}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->access$000(Lcom/samsung/android/airbutton/view/AbsAirButtonView;ILandroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onFinishing()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onHoverExit(I)V

    goto :goto_1
.end method
