.class Landroid/widget/DatePicker$4;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextUpdated(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9

    const-string v2, ""

    iget-object v7, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker;->access$1000(Landroid/widget/DatePicker;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker;->access$1000(Landroid/widget/DatePicker;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v7, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker;->access$1100(Landroid/widget/DatePicker;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker;->access$1100(Landroid/widget/DatePicker;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iget-object v7, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker;->access$1200(Landroid/widget/DatePicker;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;
    invoke-static {v7}, Landroid/widget/DatePicker;->access$1200(Landroid/widget/DatePicker;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    iget-object v7, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;
    invoke-static {v7}, Landroid/widget/DatePicker;->access$1300(Landroid/widget/DatePicker;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_7

    iget-object v7, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;
    invoke-static {v7}, Landroid/widget/DatePicker;->access$1300(Landroid/widget/DatePicker;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_0
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    const-string v3, "01"

    goto :goto_0

    :cond_2
    const-string v5, "01"

    goto :goto_1

    :cond_3
    const-string v6, "2013"

    goto :goto_2

    :cond_4
    iget-object v7, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;
    invoke-static {v7}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    add-int/lit8 v7, v1, -0x1

    if-eq v4, v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "//"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    iget-object v7, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;
    invoke-static {v7}, Landroid/widget/DatePicker;->access$300(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_6
    iget-object v7, p0, Landroid/widget/DatePicker$4;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v7}, Landroid/widget/DatePicker;->access$400(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
