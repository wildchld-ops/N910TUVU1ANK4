.class Lcom/android/mms/ui/SettingsReservationActivity$4$1;
.super Ljava/lang/Object;
.source "SettingsReservationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SettingsReservationActivity$4;->onDateSet(Landroid/widget/DatePicker;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SettingsReservationActivity$4;

.field final synthetic val$dayOfMonthFinal:I

.field final synthetic val$monthOfYearFinal:I

.field final synthetic val$yearFinal:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SettingsReservationActivity$4;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SettingsReservationActivity$4$1;->this$1:Lcom/android/mms/ui/SettingsReservationActivity$4;

    iput p2, p0, Lcom/android/mms/ui/SettingsReservationActivity$4$1;->val$yearFinal:I

    iput p3, p0, Lcom/android/mms/ui/SettingsReservationActivity$4$1;->val$monthOfYearFinal:I

    iput p4, p0, Lcom/android/mms/ui/SettingsReservationActivity$4$1;->val$dayOfMonthFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    sget-object v0, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    iget v1, p0, Lcom/android/mms/ui/SettingsReservationActivity$4$1;->val$yearFinal:I

    iget v2, p0, Lcom/android/mms/ui/SettingsReservationActivity$4$1;->val$monthOfYearFinal:I

    iget v3, p0, Lcom/android/mms/ui/SettingsReservationActivity$4$1;->val$dayOfMonthFinal:I

    iget-object v4, p0, Lcom/android/mms/ui/SettingsReservationActivity$4$1;->this$1:Lcom/android/mms/ui/SettingsReservationActivity$4;

    iget-object v4, v4, Lcom/android/mms/ui/SettingsReservationActivity$4;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    # getter for: Lcom/android/mms/ui/SettingsReservationActivity;->mHourofDay:I
    invoke-static {v4}, Lcom/android/mms/ui/SettingsReservationActivity;->access$1000(Lcom/android/mms/ui/SettingsReservationActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/SettingsReservationActivity$4$1;->this$1:Lcom/android/mms/ui/SettingsReservationActivity$4;

    iget-object v5, v5, Lcom/android/mms/ui/SettingsReservationActivity$4;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    # getter for: Lcom/android/mms/ui/SettingsReservationActivity;->mMin:I
    invoke-static {v5}, Lcom/android/mms/ui/SettingsReservationActivity;->access$1100(Lcom/android/mms/ui/SettingsReservationActivity;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$4$1;->this$1:Lcom/android/mms/ui/SettingsReservationActivity$4;

    iget-object v0, v0, Lcom/android/mms/ui/SettingsReservationActivity$4;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    sget-object v1, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    # invokes: Lcom/android/mms/ui/SettingsReservationActivity;->refreshReservationTime(J)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->access$900(Lcom/android/mms/ui/SettingsReservationActivity;J)V

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$4$1;->this$1:Lcom/android/mms/ui/SettingsReservationActivity$4;

    iget-object v0, v0, Lcom/android/mms/ui/SettingsReservationActivity$4;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    sget-object v1, Lcom/android/mms/ui/SettingsReservationActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    # invokes: Lcom/android/mms/ui/SettingsReservationActivity;->isEnableReservationTime(J)Z
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SettingsReservationActivity;->access$400(Lcom/android/mms/ui/SettingsReservationActivity;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$4$1;->this$1:Lcom/android/mms/ui/SettingsReservationActivity$4;

    iget-object v0, v0, Lcom/android/mms/ui/SettingsReservationActivity$4;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    # invokes: Lcom/android/mms/ui/SettingsReservationActivity;->refreshMinValue()V
    invoke-static {v0}, Lcom/android/mms/ui/SettingsReservationActivity;->access$1200(Lcom/android/mms/ui/SettingsReservationActivity;)V

    :cond_0
    return-void
.end method
