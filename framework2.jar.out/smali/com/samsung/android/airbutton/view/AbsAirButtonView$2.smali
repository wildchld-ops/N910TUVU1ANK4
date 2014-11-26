.class Lcom/samsung/android/airbutton/view/AbsAirButtonView$2;
.super Ljava/lang/Object;
.source "AbsAirButtonView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchEventEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchAtAirButtonView:Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
