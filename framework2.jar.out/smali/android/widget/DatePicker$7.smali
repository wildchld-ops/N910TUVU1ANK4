.class Landroid/widget/DatePicker$7;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
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

    iput-object p1, p0, Landroid/widget/DatePicker$7;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Landroid/widget/DatePicker$7;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$2200(Landroid/widget/DatePicker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DatePicker$7;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$2300(Landroid/widget/DatePicker;)Landroid/widget/CalendarView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker$7;->this$0:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getCalendarViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker$7;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateCalendarView()V
    invoke-static {v1}, Landroid/widget/DatePicker;->access$700(Landroid/widget/DatePicker;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker$7;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateInputState()V
    invoke-static {v1}, Landroid/widget/DatePicker;->access$900(Landroid/widget/DatePicker;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker$7;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateInputState()V
    invoke-static {v1}, Landroid/widget/DatePicker;->access$900(Landroid/widget/DatePicker;)V

    :cond_2
    const/4 v1, 0x0

    return v1
.end method
