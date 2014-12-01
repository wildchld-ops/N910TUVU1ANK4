.class Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardItemClickListener;
.super Ljava/lang/Object;
.source "CallerInfoCardView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoCardItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;


# direct methods
.method private constructor <init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardItemClickListener;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardItemClickListener;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v1, "CallerInfoCardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallerInfoCardItemClickListener.onItemClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->launch()V

    return-void
.end method
