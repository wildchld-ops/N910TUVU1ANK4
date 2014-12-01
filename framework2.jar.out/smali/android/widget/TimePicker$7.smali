.class Landroid/widget/TimePicker$7;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextUpdated(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9

    const v8, 0x1020394

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$500(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v0, "AM"

    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v5, v7}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v5}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v5, v7}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    :cond_1
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2
    const-string v2, "00"

    goto/16 :goto_0

    :cond_3
    const-string v3, "00"

    goto :goto_1

    :cond_4
    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$700(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$700(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    goto :goto_2

    :cond_6
    iget-object v5, p0, Landroid/widget/TimePicker$7;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v5, v7}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_3
.end method
