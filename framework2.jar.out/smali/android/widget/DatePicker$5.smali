.class Landroid/widget/DatePicker$5;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;


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

    iput-object p1, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextReceived(Ljava/lang/CharSequence;)V
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "//"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v9, v3

    const/4 v10, 0x3

    if-ge v9, v10, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v8, -0x1

    const/4 v2, -0x1

    const/4 v0, -0x1

    const-string v7, ""

    const-string/jumbo v9, "yyyyMMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v4

    array-length v6, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_4

    aget-char v9, v4, v1

    sparse-switch v9, :sswitch_data_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_0
    aget-object v9, v3, v1

    if-eqz v9, :cond_1

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_3
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    const/16 v10, 0x64

    # invokes: Landroid/widget/DatePicker;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v9, v10, v7}, Landroid/widget/DatePicker;->access$1400(Landroid/widget/DatePicker;CLjava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_1
    const-string v7, ""

    goto :goto_3

    :sswitch_1
    aget-object v9, v3, v1

    if-eqz v9, :cond_2

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_4
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    const/16 v10, 0x4d

    # invokes: Landroid/widget/DatePicker;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v9, v10, v7}, Landroid/widget/DatePicker;->access$1400(Landroid/widget/DatePicker;CLjava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_2
    const-string v7, ""

    goto :goto_4

    :sswitch_2
    aget-object v9, v3, v1

    if-eqz v9, :cond_3

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_5
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    const/16 v10, 0x79

    # invokes: Landroid/widget/DatePicker;->getValueFromWBResult(CLjava/lang/String;)I
    invoke-static {v9, v10, v7}, Landroid/widget/DatePicker;->access$1400(Landroid/widget/DatePicker;CLjava/lang/String;)I

    move-result v8

    goto :goto_2

    :cond_3
    const-string v7, ""

    goto :goto_5

    :cond_4
    iget-object v10, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    if-lez v8, :cond_5

    :goto_6
    if-lez v2, :cond_6

    add-int/lit8 v9, v2, -0x1

    :goto_7
    if-lez v0, :cond_7

    :goto_8
    # invokes: Landroid/widget/DatePicker;->setDate(III)V
    invoke-static {v10, v8, v9, v0}, Landroid/widget/DatePicker;->access$500(Landroid/widget/DatePicker;III)V

    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateSpinners()V
    invoke-static {v9}, Landroid/widget/DatePicker;->access$600(Landroid/widget/DatePicker;)V

    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateCalendarView()V
    invoke-static {v9}, Landroid/widget/DatePicker;->access$700(Landroid/widget/DatePicker;)V

    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->notifyDateChanged()V
    invoke-static {v9}, Landroid/widget/DatePicker;->access$800(Landroid/widget/DatePicker;)V

    goto/16 :goto_0

    :cond_5
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/DatePicker;->access$000(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    goto :goto_6

    :cond_6
    iget-object v9, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/DatePicker;->access$000(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    goto :goto_7

    :cond_7
    iget-object v11, p0, Landroid/widget/DatePicker$5;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v11}, Landroid/widget/DatePicker;->access$000(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_8

    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method
