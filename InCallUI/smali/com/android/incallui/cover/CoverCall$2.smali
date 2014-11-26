.class Lcom/android/incallui/cover/CoverCall$2;
.super Ljava/lang/Object;
.source "CoverCall.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/cover/CoverCall;->onFinishInflateAnswerUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/cover/CoverCall;


# direct methods
.method constructor <init>(Lcom/android/incallui/cover/CoverCall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/cover/CoverCall$2;->this$0:Lcom/android/incallui/cover/CoverCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall$2;->this$0:Lcom/android/incallui/cover/CoverCall;

    # getter for: Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/cover/CoverCall;->access$100(Lcom/android/incallui/cover/CoverCall;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall$2;->this$0:Lcom/android/incallui/cover/CoverCall;

    # getter for: Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/cover/CoverCall;->access$100(Lcom/android/incallui/cover/CoverCall;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02036a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall$2;->this$0:Lcom/android/incallui/cover/CoverCall;

    const-string v1, "onDrawerOpened"

    const/4 v2, 0x1

    # invokes: Lcom/android/incallui/cover/CoverCall;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/cover/CoverCall;->access$200(Lcom/android/incallui/cover/CoverCall;Ljava/lang/String;Z)V

    return-void
.end method
