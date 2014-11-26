.class Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;
.super Ljava/lang/Object;
.source "CallerInfoCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardView;->scrollViewTo(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iput p2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;->val$x:I

    iput p3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/ScrollView;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;->val$x:I

    iget v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;->val$y:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
